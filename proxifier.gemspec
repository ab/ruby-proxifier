require_relative "lib/proxifier/version"

Gem::Specification.new do |s|
  s.name        = "proxifier-fork"
  s.version     = Proxifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Samuel Kadolph", "Andy Brody"]
  s.email       = ["samuel@kadolph.com", "git@abrody.com"]
  s.homepage    = "https://github.com/ab/ruby-proxifier"
  s.summary     = %q{Proxifier is a gem to force ruby to use a proxy.}
  s.description = <<-EOM
    Proxifier adds support for HTTP or SOCKS proxies and lets you force TCPSocket to use proxies.

    This is a fork of proxifier https://github.com/samuelkadolph/ruby-proxifier

    The fork allows the gem to run on modern ruby versions and adds some minor features.
  EOM
  s.license     = 'MIT'

  s.files       = Dir["bin/*", "lib/**/*"] + ["LICENSE", "README.md"]
  s.executables = ["pirb", "pruby"]

  s.add_development_dependency 'rake'
end
