Gem::Specification.new do |s|
  s.name = 'suggest_grid'
  s.version = '0.1.15-SNAPSHOT'
  s.summary = 'suggest_grid'
  s.description = 'SuggestGrid is an recommendation and personalization service.'
  s.authors = ['SuggestGrid']
  s.email = 'support@suggestgrid.com'
  s.homepage = 'http://www.suggestgrid.com'
  s.license = 'MIT'
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('faraday', '~> 0.8.11')
  s.add_dependency('json_mapper', '~> 0.2.1')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
