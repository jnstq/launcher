require 'rubygems'
require 'test/unit'
require 'active_support'
require 'active_support/test_case'
require 'mocha'

RAILS_ROOT = File.join(File.dirname(__FILE__), '..') unless defined? RAILS_ROOT
RAILS_ENV = 'test'

$: << File.dirname(__FILE__) + '/../lib'

require 'launcher'