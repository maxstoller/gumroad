require 'httparty'

module Gumroad
  class Session
    include HTTParty
    base_uri 'https://gumroad.com/api/v1'

    attr_reader :token

    def initialize(email, password)
      @token = post('/sessions', {query: {
        email: email, password: password
      }})['token']
    end

    def post(path, params)
      self.class.post(path, params)
    end

    def get(path)
      self.class.get(path, basic_auth: {username: @token, password: ''})
    end

    def links
      Gumroad::LinkProxy.new(self)
    end
  end
end
