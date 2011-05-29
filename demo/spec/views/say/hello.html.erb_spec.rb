require 'spec_helper'


describe "say/hello.html.erb" do

  it "displays the text attribute of the message" do
    assign(:message,"Hello World!")
    render
    rendered.should contain "Hello, Rails"
    rendered.should contain "Hello World!"
  end

end
