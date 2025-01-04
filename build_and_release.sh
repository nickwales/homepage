#!/bin/sh

#git tag <tagname>
hugo 
tar czvf --disable-copyfile homepage.tgz public/* .
gh release create  v0.0.3 --title "Fixes CSS" --notes "testing" ./*.tgz --repo nickwales/homepage 

rm -f homepage.tgz

