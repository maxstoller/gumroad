module Gumroad
  class Link
    attr_reader :json
    attr_accessor :name, :url, :description, :user, :price_cents 
    
    def initialize(session, json)
      @session = session
      [:name, :url, :description, :user, :price_cents].each do |attribute|
        instance_variable_set(:"@#{attribute}", json[attribute.to_s])
      end
    end
  end
end