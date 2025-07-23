#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#!/bin/bash
# 修改机器名称
#sed -i "s/OpenWrt/PSG1218/g" package/base-files/files/bin/config_generate

# 设置lan ip
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate

# 去除默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 修改自带默认主题
#sed -i 's/bootstrap/netgear/g' feeds/luci/collections/luci/Makefile

#修改默认时间格式
sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S %A")/g' $(find ./package/*/autocore/files/ -type f -name "index.htm")
