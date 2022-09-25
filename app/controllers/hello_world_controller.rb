class HelloWorldController < ApplicationController
  def index
  end

  def shows
    @hello_world = HelloWorld.find
  end
end
