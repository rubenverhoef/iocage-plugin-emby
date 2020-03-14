#!/bin/sh

cd / && curl -s https://api.github.com/repos/MediaBrowser/Emby.Releases/releases/latest | grep "browser_download_url.*_amd64.txz" | cut -d : -f 2,3 | tr -d \" | wget -qi -
pkg add -f  emby-server*_amd64.txz
rm emby-server*_amd64.txz
