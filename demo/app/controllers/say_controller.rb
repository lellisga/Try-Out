class SayController < ApplicationController

  def hello
    @message = "Hello World!"
  end

  def goodbye
  end

  def file
    @files = Dir.glob('*')
  end
  
end
