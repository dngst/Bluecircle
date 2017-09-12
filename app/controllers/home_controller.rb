class HomeController < ApplicationController
  def index
    @children = Child.all
    render :index
  end
end
