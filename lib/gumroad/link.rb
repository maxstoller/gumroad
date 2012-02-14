module Gumroad
  class Link
    attr_reader :json
    attr_accessor :id, :name, :url, :description, :price
    
    def initialize(session, json)
      @session = session
      [:id, :name, :url, :description, :price].each do |attribute|
        instance_variable_set(:"@#{attribute}", json[attribute.to_s])
      end
    end

    def save
      params = {name: name, url: url, description: description, price: price}
      json = @session.post("/links", params)['link']
      self
    end
  end
end