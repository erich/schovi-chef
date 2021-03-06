require 'spec_helper'

describe 'Sheldon 6artisans webserver' do

  it 'has nginx installed' do
    expect(package 'nginx').to be_installed
  end

  it 'is running' do
    expect(service 'nginx').to be_enabled
    expect(service 'nginx').to be_running
  end

  xit 'responds to request with response from rails app' do
    #think about adding domains to host file
    expect(command 'curl http://localhost').to return_stdout(/.*<title>RubyGems.org | your community gem host<\/title>.*/)
  end

end
