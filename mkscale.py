import sys
import json
import subprocess

from fontTools.unicodedata import script
from libotd.gc import Gc
from libotd.transform import Transform

def ResolveFileName(baseName, scaleZh, scaleEn):
	return baseName + "-s{},{}".format(scaleZh, scaleEn)

def ReadFont(filename):
	process = subprocess.Popen(
		[ 'otfccdump', '--ignore-hints', '--ugly', '--no-bom', '--quiet', filename ],
		stdout = subprocess.PIPE
	)
	return json.loads(process.communicate()[0].decode('utf-8', errors = 'replace'))

def WriteFont(font, filename):
	process = subprocess.Popen(
		[ 'otfccbuild', '--quiet', '--short-post', '--keep-average-char-width', '-O3', '-o', filename ],
		stdin = subprocess.PIPE
	)
	process.communicate(json.dumps(font, ensure_ascii = False, separators=(',',':')).encode())

baseName = sys.argv[1]
scaleZh = int(sys.argv[2])
scaleEn = int(sys.argv[3])

font = ReadFont("src/font/{}.otf".format(baseName))
del font['GSUB']
del font['GPOS']
del font['GDEF']

Gc(font)

scriptMap = {}
for cp, name in font['cmap'].items():
	cp = int(cp)
	isZh = script(chr(cp)) == "Hani"
	scriptMap[name] = scriptMap.get(name) or isZh

for name, glyph in font['glyf'].items():
	if not scriptMap.get(name):
		Transform(glyph, scaleEn / scaleZh, 0, 0, scaleEn / scaleZh, 0, 0, True)

WriteFont(font, "build/{}.otf".format(ResolveFileName(baseName, scaleZh, scaleEn)))
