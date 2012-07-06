require 'spec_helper'

describe Gumroad do
  describe '#new' do
    before do
      stub_request(:post, 'https://gumroad.com/api/v1/sessions').
        with(body: {email: 'foo@bar.com', password: 'foobar'}).
        to_return(status: 200, body: fixture('session'))
    end  
    
    specify { Gumroad.new('foo@bar.com', 'foobar').should be_a Gumroad::Session }
  end
end