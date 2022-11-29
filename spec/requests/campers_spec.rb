require 'rails_helper'

RSpec.describe "Campers", type: :request do
  describe "GET /campers" do
    it 'returns an array of all campers' do
      get '/campers'

      expect(response.body).to include_json([
        {
          id: a_kind_of(Integer),
          name: "Caitlin",
          age: 8
        },
        {
          id: a_kind_of(Integer),
          name: "Lizzie",
          age: 9
        }
      ])
    end

    pending "add some examples (or delete) #{__FILE__}"
  end
end
