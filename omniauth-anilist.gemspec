# frozen_string_literal: true

require File.expand_path('lib/omniauth-anilist/version', __dir__)

Gem::Specification.new do |gem|
  gem.authors       = ['Derek Viera']
  gem.email         = ['ma.dmviera01@gmail.com']
  gem.description   = 'Unofficial OmniAuth strategy for AniList.'
  gem.summary       = 'Unofficial OmniAuth strategy for AniList.'
  gem.homepage      = 'https://github.com/rangeroob/omniauth-anilist'
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-anilist'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Anilist::VERSION

  gem.add_dependency 'omniauth', '~> 1.5'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
  gem.add_development_dependency 'minitest', '~> 5.0'
  gem.add_development_dependency 'rake', '~> 12.0'
end
