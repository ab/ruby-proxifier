# frozen_string_literal: true

require "uri"
require_relative "uri/socks"

require_relative "proxifier/version"

require_relative "proxifier/proxy"
require_relative "proxifier/proxies/http"
require_relative "proxifier/proxies/socks"
require_relative "proxifier/proxies/socks"
require_relative "proxifier/proxies/socks4"
require_relative "proxifier/proxies/socks4a"

module Proxifier
  def self.Proxy(url, options = {})
    url = URI.parse(url)

    raise(ArgumentError, "proxy url has no scheme") unless url.scheme
    begin
      klass = const_get("#{url.scheme.upcase}Proxy")
    rescue NameError
      raise(ArgumentError, "unknown proxy scheme `#{url.scheme}'")
    end

    klass.new(url, options)
  end
end
