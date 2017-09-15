class HomeController < ApplicationController
  def index
    @children = Child.all
    if current_user
      @user = current_user.id
      # @circles = User.joins(:memberships).where(memberships:{user_id: @user.id})
    end
    render :index
  end
end
