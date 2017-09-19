class UsersController < ApplicationController
	def show
		@user = current_user
	    @circles = @user.circles
	end
end
