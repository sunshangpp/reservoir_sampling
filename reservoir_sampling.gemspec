Gem::Specification.new do |s|
  s.name        = 'reservoir_sampling'
  s.version     = '0.0.1'
  s.date        = '2014-07-25'
  s.summary     = "reservoir sampling"
  s.description = "simple implmentation of reservoir sampling in ruby"
  s.authors     = ["Shangpeng Sun"]
  s.email       = 'sunshangpp@gmail.com'
  s.files       = [
    'lib/reservoir_sampling.rb',
    'lib/reservoir_sampling/input_generator.rb'
  ]
  s.license     = 'SSUN'

  s.test_files = ['test/test_reservoir.rb']
  s.default_executable = ['reservoir_sampling']
end