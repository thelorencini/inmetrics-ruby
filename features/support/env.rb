require 'capybara/cucumber'
require 'selenium-webdriver'
require 'httparty'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'
require 'rspec'

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
World(Helper)
World(Pages)

Capybara.configure do |config|
  # selenium selenium_chrome selenium_chrome_healess
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_padrao']
  config.default_max_wait_time = 10 
end