Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'apricot'
  s.version     = '0.0.1'
  s.summary     = 'Clojure-like Lisp on Rubinius'
  s.description = 'A Clojure-like Lisp on Rubinius'
  s.authors     = ['Curtis McEnroe', 'Scott Olson']
  s.email       = 'programble@gmail.com'
  s.homepage    = 'https://github.com/programble/apricot'

  s.files        = Dir['lib/**/*.rb', 'kernel/*.apr', 'bin/*', 'README.md']
  s.test_files   = Dir['spec/*.rb']
  s.executables  = ['apricot']
  s.require_path = 'lib'

  s.add_development_dependency 'rake',  '~> 10.0.3'
  s.add_development_dependency 'rspec', '~> 2.12.0'
end
