JOBS=${JOBS:-4}
EditionId=StdW4Scaled

rm -r build/ out/

mkdir -p build/
mkdir -p out/!GlobalFont_$EditionId/

cp src/addon/addon.toc out/!GlobalFont_$EditionId/!GlobalFont_$EditionId.toc
sed -i "s/__REPLACE_IN_BUILD__ADDON_NAME__/Global Font (Std W4 Scaled)/" out/!GlobalFont_$EditionId/!GlobalFont_$EditionId.toc
cp src/addon/Core.lua out/!GlobalFont_$EditionId/Core.lua
sed -i "s/__REPLACE_IN_BUILD__DIRECTORY__/!GlobalFont_$EditionId/" out/!GlobalFont_$EditionId/Core.lua
cp src/addon/FixedSize.xml out/!GlobalFont_$EditionId/FixedSize.xml
sed -i "s/__REPLACE_IN_BUILD__DIRECTORY__/!GlobalFont_$EditionId/;s/__REPLACE_IN_BUILD__EDITION_ID__/$EditionId/" out/!GlobalFont_$EditionId/FixedSize.xml
cp src/addon/LibStub.lua out/!GlobalFont_$EditionId/LibStub.lua
cp src/addon/SharedMedia.lua out/!GlobalFont_$EditionId/SharedMedia.lua

cp src/font/text.otf out/!GlobalFont_$EditionId/text.otf
cp src/font/chat.otf out/!GlobalFont_$EditionId/chat.otf

# generated by `src/xml/xmlparser.py`
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 3 2 && cp build/text-s3,2.otf out/!GlobalFont_$EditionId/text-s3,2.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 5 4 && cp build/text-s5,4.otf out/!GlobalFont_$EditionId/text-s5,4.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 6 5 && cp build/text-s6,5.otf out/!GlobalFont_$EditionId/text-s6,5.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 8 7 && cp build/text-s8,7.otf out/!GlobalFont_$EditionId/text-s8,7.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 13 10 && cp build/text-s13,10.otf out/!GlobalFont_$EditionId/text-s13,10.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 13 11 && cp build/text-s13,11.otf out/!GlobalFont_$EditionId/text-s13,11.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 13 12 && cp build/text-s13,12.otf out/!GlobalFont_$EditionId/text-s13,12.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 14 11 && cp build/text-s14,11.otf out/!GlobalFont_$EditionId/text-s14,11.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 14 13 && cp build/text-s14,13.otf out/!GlobalFont_$EditionId/text-s14,13.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 15 13 && cp build/text-s15,13.otf out/!GlobalFont_$EditionId/text-s15,13.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 16 9 && cp build/text-s16,9.otf out/!GlobalFont_$EditionId/text-s16,9.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 17 14 && cp build/text-s17,14.otf out/!GlobalFont_$EditionId/text-s17,14.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 17 16 && cp build/text-s17,16.otf out/!GlobalFont_$EditionId/text-s17,16.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 19 16 && cp build/text-s19,16.otf out/!GlobalFont_$EditionId/text-s19,16.otf &
((i=i%JOBS)); ((i++==0)) && wait ; python mkscale.py text 19 18 && cp build/text-s19,18.otf out/!GlobalFont_$EditionId/text-s19,18.otf &

wait
cd out/
7z a -t7z -m0=LZMA:d=512m:fb=273 -ms GlobalFont_$EditionId.7z !GlobalFont_$EditionId/