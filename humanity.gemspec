lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'humanity/version'

spec = Gem::Specification.new do |s|
  s.name = 'humanity'
  s.version = Humanity::VERSION
  s.summary = 'Common user functionality'
  s.description = 'Mix in Humanity and get common user model functionality'
  s.files = Dir['app/**/*.rb', 'lib/**/*.rb', 'lib/tasks/*.rake']
  s.require_path = 'lib'
  s.author = 'Adam Crownoble'
  s.email = 'adam.crownoble@biola.edu'
  s.homepage = 'https://github.com/biola/humanity'
  s.license = 'MIT'
  s.add_dependency('rails', '>= 3.0.0')
end
