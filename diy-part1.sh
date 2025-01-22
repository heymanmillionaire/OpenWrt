#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git homeproxy https://github.com/heymanmillionaire/openwrt-homeproxy >> feeds.conf.default

# Install openclash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash openwrt/package/luci-app-openclash
# mkdir openwrt/package/luci-app-openclash
# cd openwrt/package/luci-app-openclash
# git init
# git remote add -f origin https://github.com/vernesong/OpenClash.git
# git config core.sparsecheckout true
# echo "luci-app-openclash" >> .git/info/sparse-checkout
# git pull --depth 1 origin master
# git branch --set-upstream-to=origin/master master
# pushd luci-app-openclash/tools/po2lmo
# make && sudo make install
# popd 

# Install Helloworld
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default 
# rm -rf package/helloworld
# git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
# git -C package/helloworld pull
# rm -rf package/helloworld
          
# Install homeproxy
echo "src-git homeproxy https://github.com/muink/luci-app-homeproxy" >> feeds.conf.default
        
