# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "D-D-Character-Generator"
  gem.homepage = "http://github.com/serened/D-D-Character-Generator"
  gem.license = "MIT"
  gem.summary = %Q{A D&D character generator for the lazy.}
  gem.description = %Q{A D&D character generator for the lazy. It will give you a name, age, class and race. It will not roll up your stats (yet).}
  gem.email = "serened@gmail.com"
  gem.authors = ["Serene Careaga"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

#require 'rspec/core'
#require 'rspec/core/rake_task'
#RSpec::Core::RakeTask.new(:spec) do |spec|
#  spec.pattern = FileList['spec/**/*_spec.rb']
#end

#RSpec::Core::RakeTask.new(:rcov) do |spec|
#  spec.pattern = 'spec/**/*_spec.rb'
#  spec.rcov = true
#end


task :default => :spec

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "D-D-Character-Generator #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
