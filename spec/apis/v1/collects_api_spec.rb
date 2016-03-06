require "spec_helper"

describe V1::CollectsApi do

  let(:collects_path) { "/v1/collects" }
 
  
  context "collect" do 
    it "create one collect" do
      
      accepted_code = "rhht123"
      opt_at = DateTime.now
      status = 1
      remark = "in"
      res = auth_json_post collects_path, accepted_code: accepted_code, 
        opt_at: opt_at, status: status,
        remark: remark
      binding.pry     
      expect(res[:code]).to eq(0)
    end
  end
 
end
