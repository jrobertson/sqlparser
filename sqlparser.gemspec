Gem::Specification.new do |s|
  s.name = 'sqlparser'
  s.version = '0.1.1'
  s.summary = 'Parses basic SQL statements.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_runtime_dependency('lineparser', '~> 0.1', '>=0.1.13')
  s.signing_key = '../privatekeys/sqlparser.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/sqlparser'
end
