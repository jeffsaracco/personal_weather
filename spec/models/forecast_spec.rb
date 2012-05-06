require 'spec_helper'

describe Forecast do
  let(:hourly_hash) {
    {'temp'=>{"english"=>"66"},"icon_url"=>"http://icons-ak.wxug.com/i/c/k/partlycloudy.gif" }
  }

  context "initialize" do
    let(:forecast) { Forecast.new(hourly_hash) }

    it "should assign the values correctly" do
      forecast.temperature.should == "66"
      forecast.icon.should == "http://icons-ak.wxug.com/i/c/k/partlycloudy.gif"
    end
  end
end
