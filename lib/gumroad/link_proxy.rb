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
      scoped_options = {}
      options.each { |k, v| scoped_options["link[#{k.to_s}]"] = v }
      json = @session.post('/links', scoped_options)
      Gumroad::Link.new(@session, json['link'])
    end
  end
end