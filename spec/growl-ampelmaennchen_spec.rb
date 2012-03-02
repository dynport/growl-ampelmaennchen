require File.expand_path("../../lib/growl-ampelmaennchen.rb", __FILE__)
$:<< File.expand_path("../../lib", __FILE__)
RSpec.configure do |c|
  c.filter_run :focus => true
  c.run_all_when_everything_filtered = true
end


describe "Growl::Ampelmaennchen" do
  describe "asset_root" do
    it "returns a String" do
      Growl::Ampelmaennchen.asset_root.should be_kind_of(String)
    end
    
    it "returns the correct String" do
      Growl::Ampelmaennchen.asset_root.should == File.expand_path("../../assets", __FILE__)
    end
  end
  
  %w(error failed info passed pending).each do |key|
    describe "##{key}" do
      it "returns the correct string" do
        Growl::Ampelmaennchen.send(key).should == File.expand_path("../../assets/#{key}.png", __FILE__)
      end
    end
  end
end