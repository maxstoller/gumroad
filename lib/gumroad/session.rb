require 'httparty'

module Gumroad
  class Session
    include HTTParty
    base_uri 'https://gumroad.com/api/v1'

    def initialize(email, password)
      token = post('/sessions', {
        email: email, password: password
      })['token']
      self.class.basic_auth token, ''
    end

    def post(path, params)
      self.class.post(path, query: params)
    end

    def get(path)
      self.class.get(path)
    end

    def links
      Gumroad::LinkProxy.new(self)
    end
  end
end
