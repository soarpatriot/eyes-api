require "spec_helper"

describe V1::CitiesApi do

  let(:cities_path) { "/v1/cities" }
 
  def city_districts_path city 
    "v1/cities/#{city.id}/districts"
  end 
  
  context "city" do 
    it "get all cities" do

      create_list :city, 2

      res = auth_json_get cities_path 
      expect(res.size).to eq(2)
    end
  end
 
end
