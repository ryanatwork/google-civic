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


end
