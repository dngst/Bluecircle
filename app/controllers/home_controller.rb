class HomeController < ApplicationController
  def index
    @children = Child.all
    if current_user
      @user = current_user.id
    end
    render :index
  end
end
