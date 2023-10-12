#!/bin/fish

# FILE: votd (fish file)
# DESCRIPTION: fish script for Verse Of The Day

set Votd_API 'https://www.kingjamesbibleonline.org/popular-bible-verses-widget.php'

pushd (systemd-path temporary)
rm -f votd > /dev/null
curl -s "$Votd_API" | sed -e 's/<[^>]*>//g' | sed -e 's/&quot;/"/g' | sed 's/ -/\n-/g' >> votd
rm -f votd.txt > /dev/null
fmt -t votd >> votd.txt
rm -f votd_color_file > /dev/null
echo "[96m" >> votd_color_file
# clear
cat votd_color_file votd.txt
echo 
popd
