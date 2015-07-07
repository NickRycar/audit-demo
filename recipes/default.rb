#
# Cookbook Name:: audit-demo
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

control_group 'Quick test suite' do

  control 'apache port test' do
    it 'should run on a non-default port' do
      expect(port(80)).to_not be_listening
    end
  end

  control 'apache service' do
    it 'should be running' do
      expect(service('apache2-default')).to be_enabled
      expect(service('apache2-default')).to be_running
    end
  end

end
