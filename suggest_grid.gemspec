Gem::Specification.new do |s|
  s.name = 'suggestgrid'
  s.version = '0.1.25'
  s.summary = 'suggest_grid'
  s.description = 'SuggestGrid is a recommendation and personalization service.'
  s.authors = ['SuggestGrid']
  s.email = 'support@suggestgrid.com'
  s.homepage = 'http://www.suggestgrid.com'
  s.license = 'MIT'
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
