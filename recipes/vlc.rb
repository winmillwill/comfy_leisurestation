#
# Cookbook Name:: comfy_leisurestation
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "VLC" do
  dmg_name "vlc-2.0.4.dmg"
  source "http://sourceforge.net/projects/vlc/files/2.0.4/macosx/vlc-2.0.4.dmg/download"
  checksum "d3770f25632aee8224ac17be383872ae05f684d69ee0f4c7e9d2b30778a8bfb5"
  action :install
end
