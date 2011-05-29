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

  context "#index" do
    it "should redirect to index" do
      pending "there's no index"  do
        response.should render_template("index")
        post :index
      end
    end
  end
  
end
