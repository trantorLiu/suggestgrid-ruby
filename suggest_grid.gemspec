Gem::Specification.new do |s|
  s.name        = 'suggest_grid'
  s.version     = '0.1.5'
  s.summary     = 'suggest_grid'
  s.description = 'Hosted Recommendation and Personalization API for developers'
  s.authors     = ['SuggestGrid']
  s.email       = 'support@suggestgrid.com'
  s.homepage    = 'http://www.suggestgrid.com'
  s.license     = 'MIT'
  
  s.add_dependency('unirest', '~> 1.1.2')
  s.required_ruby_version = '~> 2.0'

  s.files       = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']  
  s.require_paths = ['lib']
  
end
