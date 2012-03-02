require "spec_helper"
require "growl-ampelmaennchen"

describe "Hello World" do
  it "should run" do
    system(%(growlnotify -m "Message" -t "Title" --image #{Growl::Ampelmaennchen.passed}))
  end
end