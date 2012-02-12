require 'gumroad/version'
require 'gumroad/session'
require 'gumroad/link'
require 'gumroad/link_proxy'

module Gumroad
  class << self
    def new(email, password)
      Gumroad::Session.new(email, password)
    end
  end
end
