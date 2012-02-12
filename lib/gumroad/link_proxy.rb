module Gumroad
  class LinkProxy
    def initialize(session)
      @session = session
    end

    def find(id)
      Gumroad::Link.new(@session, @session.get("/links/#{id}")['link'])
    end

    def all
      @session.get('/links')['links'].map do |json|
        Gumroad::Link.new(@session, json)
      end
    end
    
    def create(options={})
      if json = @session.post('/links', options)
        Gumroad::Link.new(@session, json['link'])
      else
        nil
      end
    end
  end
end