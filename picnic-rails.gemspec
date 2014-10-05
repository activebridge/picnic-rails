# -*- encoding: utf-8 -*-
require File.expand_path('../lib/picnic-rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'picnic-rails'
  s.version       = Picnic::Rails::VERSION
  s.authors       = ['Alex Galushka']
  s.email         = ['galulex@gmail.com']
  s.homepage      = 'https://github.com/galulex/lazybox'
  s.summary       = 'Picnic CSS for Rails'
  s.description   = 'Unpack your meal and get coding. An invasive CSS library to get your style started.'
  s.platform      = Gem::Platform::RUBY

  s.files         = Dir['README.md', 'lib/**/*', 'app/**/*']
  s.require_path  = 'lib'

end

