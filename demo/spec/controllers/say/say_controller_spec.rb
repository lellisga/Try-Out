require 'spec_helper'

describe SayController do
  it {should_not be_nil}

  context "#hello" do
    it "should render the hello template" do
      get :hello
      response.should render_template("hello")
      
    end

    it "should assign a variable messages with 'Hello World'" do
      get :hello
      assigns[:message].should eql "Hello World!"
    end
  end

  context "#goodbye" do
    it "should render to the goodbye template" do
      get :goodbye
      response.should render_template("goodbye")
    end
  end

  context "#file" do
    it "should render to the file template" do
      get :file
      response.should render_template("file")
    end
  end
  
end
