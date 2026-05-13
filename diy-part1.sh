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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Modify default IP
# sed -i 's/192.168.1.1/10.0.0.2/g' package/base-files/luci2/bin/config_generate

# 1. 彻底从配置文件中抹除
#sed -i '/CONFIG_PACKAGE_kmod-crypto-lib-chacha20poly1305/d' .config
#sed -i '/CONFIG_PACKAGE_kmod-crypto-lib-poly1305/d' .config

# 2. 显式禁用，防止被其他包作为依赖强行拉起来
#echo "# CONFIG_PACKAGE_kmod-crypto-lib-chacha20poly1305 is not set" >> .config
#echo "# CONFIG_PACKAGE_kmod-crypto-lib-poly1305 is not set" >> .config
