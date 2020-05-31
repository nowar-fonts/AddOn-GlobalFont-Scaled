import sys
import math
import xml.dom.minidom

fontsXmlFiles = [ 'SharedFonts.xml', 'Fonts.xml' ]

# all keys in lowercase
fontFileMap = {
	'fonts\\frizqt__.ttf': 'text',
	'fonts\\arialn.ttf': 'chat',
	'fonts\\morpheus.ttf': 'chat',
	'fonts\\skurri.ttf': 'text',
}

outlineMap = {
	'NORMAL': 'OUTLINE',
	'THICK': 'THICKOUTLINE',
}

def GetFontElements(fontFamily):
	members = fontFamily.getElementsByTagName('Member')
	return {
		member.getAttribute('alphabet'): member.getElementsByTagName('Font')[0]
		for member in members
	}

def Reduce(a, b):
	gcd = math.gcd(a, b)
	return (a // gcd, b // gcd)

def ResolveFileName(fontFile):
	baseName = fontFile[0]
	reducedSize = fontFile[1]
	extension = ".otf"
	if reducedSize[0] == 1:
		return baseName + extension
	else:
		return baseName + "-s{},{}".format(*reducedSize) + extension

fixedSizedFonts = []

lua = []
files = set()

for file in fontsXmlFiles:
	dom = xml.dom.minidom.parse(file)
	fontFamilies = dom.documentElement.getElementsByTagName('FontFamily')
	for fontFamily in fontFamilies:
		name = fontFamily.getAttribute('name')
		fonts = GetFontElements(fontFamily)
		font = fonts['roman']

		if font.hasAttribute('fixedSize') and font.getAttribute('fixedSize') == "true":
			fixedSizedFonts += [ name ]
			continue

		fontSizeEn = int(font.getAttribute('height'))
		fontSizeZh = int(fonts['simplifiedchinese'].getAttribute('height'))
		fontSizeZh = max(fontSizeEn, fontSizeZh)
		reducedSize = Reduce(fontSizeZh, fontSizeEn)

		fontFile = (fontFileMap[font.getAttribute('font').lower()], reducedSize)

		flags = []
		if font.hasAttribute('outline'):
			flags += [ outlineMap[font.getAttribute('outline')] ]
		if font.hasAttribute('monochrome'):
			if font.getAttribute('monochrome') == 'true':
				flags += [ 'MONOCHROME' ]

		if flags:
			lua.append('if {0} then {0}:SetFont([[Interface\\AddOns\\__REPLACE_IN_BUILD__DIRECTORY__\\{1}]], {2}, "{3}") end'.format(name, ResolveFileName(fontFile), fontSizeZh, ','.join(flags)))
		else:
			lua.append('if {0} then {0}:SetFont([[Interface\\AddOns\\__REPLACE_IN_BUILD__DIRECTORY__\\{1}]], {2}) end'.format(name, ResolveFileName(fontFile), fontSizeZh))
		if reducedSize[0] != 1:
			files.add(fontFile)

if fixedSizedFonts:
	print('The following fonts has `fixedSize` attribute, handle them in xml file:', file = sys.stderr)
	print(fixedSizedFonts, file = sys.stderr)

for line in lua:
	print(line)

for file in sorted(files):
	print("((i=i%JOBS)); ((i++==0)) && wait ;", # poor man’s parallel jobs
		"python mkscale.py {} {} {} &&".format(file[0], *file[1]),
		"cp build/{0} out/!GlobalFont_$EditionId/{0} &".format(ResolveFileName(file)))
