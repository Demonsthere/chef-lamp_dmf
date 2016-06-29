#
# Cookbook Name:: lamp_smf
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'apache2'
include_recipe 'lamp_smf::get_lamp'
include_recipe 'lamp_smf::set_database'
include_recipe 'lamp_smf::get_smf'
