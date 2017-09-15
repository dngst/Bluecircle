class HomeController < ApplicationController
  def index
    @children = Child.all
    @user = current_user.id
    render :index
  end
end
