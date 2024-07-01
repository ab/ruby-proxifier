require_relative "../proxies/socks"
require_relative "../proxy"

module Proxifier
  class SOCKS4AProxy < SOCKSProxy
    def do_proxify(*)
      raise NotImplementedError, "SOCKS4A is not yet implemented"
    end
  end
end
