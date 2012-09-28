require 'helper'

describe GoogleCivic::Client do
  it 'should work with an api key' do
    stub_get("https://www.googleapis.com/civicinfo/us_v1/elections?key=abc123").
      with(:headers => {'Accept'=>'*/*'}).
      to_return(:status => 200, :body => '', :headers => {})
    proc {
      GoogleCivic::Client.new(:key=> "abc123")
    }.should_not raise_exception
  end

  before do
    @client = GoogleCivic::Client.new(:key => "abc123")
  end

  describe "#elections" do
    it "should list the elections in the API" do
      stub_get("/elections?key=abc123").
        to_return(:status => 200, :body => fixture("elections.json"), :headers => {})
      elections = @client.elections
      elections.first.should == ["kind", "civicinfo#electionsqueryresponse"]
    end
  end

  describe "#voter_info" do
    it "should return the voter information from an address" do
     stub_post("/voterinfo/2000/lookup?address=1263%20Pacific%20Ave.%20Kansas%20City%20KS&key=abc123").
       with(:body => "{\"address\":\"1263 Pacific Ave. Kansas City KS\"}",
              :headers => {'Accept'=>'*/*', 'Content-Type'=>'application/json', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => fixture("voter_info.json"), :headers => {})
      voter_info = @client.voter_info(2000, "1263 Pacific Ave. Kansas City KS")
      voter_info.election.name.should == "VIP Test Election"
    end
  end

end
