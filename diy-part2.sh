#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 删除原版softethervpn插件
# rm -rf feeds/packages/net/softethervpn

# 拉取Lean大softethervpn插件
# svn co https://github.com/coolsnowwolf/packages/trunk/net/softethervpn feeds/packages/net/softethervpn

# 删除原版softethervpn5插件
# rm -rf feeds/packages/net/softethervpn5

# 拉取Lean大softethervpn5插件
# svn co https://github.com/coolsnowwolf/packages/trunk/net/softethervpn5 feeds/packages/net/softethervpn5

# 删除原版luci-app-softethervpn插件
# rm -rf feeds/lienol/luci-app-softethervpn

# 拉取修改后的luci-app-softethervpn插件
# svn co https://github.com/lxhao61/openwrt-package/trunk/luci-app-softethervpn package/lienol/luci-app-softethervpn

# 删除自带xray-core核心
# rm -rf package/feeds/packages/xray-core

# 拉取passwall源码
# # git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall/packages
# # git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall/luci
# # git clone https://github.com/xiaoxiao29/luci-app-adguardhome.git  package/luci-app-adguardhome 


git clone https://github.com/yfdoor/OpenWrt-Packages.git          package/yfdoorg
# git clone -b master  https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# git clone -b luci  https://github.com/xiaorouji/openwrt-passwall.git  package/luci-app-passwall
# git clone  https://github.com/panther706/luci-app-adguardhome.git  package/luci-app-adguardhome
# git clone  https://github.com/kenzok8/openwrt-packages.git  package/kenzo
# git clone  https://github.com/kenzok8/small-package.git  package/small-package
# git clone  https://github.com/kenzok8/small.git  package/small

# 删除passwall中xray-core核心
#rm -rf package/passwall/xray-core

#pushd feeds/packages/lang
#rm -rf golang && svn co https://github.com/openwrt/packages/trunk/lang/golang
#popd
