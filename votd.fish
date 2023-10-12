#!/bin/fish

# FILE: votd (fish file)
# DESCRIPTION: fish script for Verse Of The Day

pushd (systemd-path temporary)
rm votd > /dev/null
curl -s 'https://www.kingjamesbibleonline.org/popular-bible-verses-widget.php' | sed -e 's/<[^>]*>//g' | sed -e 's/&quot;/"/g' | sed 's/ -/\n-/g' >> votd
rm votd.txt > /dev/null
fmt -t votd >> votd.txt
rm votd_color_file > /dev/null
echo "[96m" >> votd_color_file
# clear
cat votd_color_file votd.txt
echo 
popd
