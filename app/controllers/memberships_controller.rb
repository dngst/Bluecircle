class MembershipsController < ApplicationController
    def new
      @circle = Circle.find params[:circle_id]
      @membership = Membership.new({circle_id: @circle})
    end

    def create
      @circle = Circle.find params[:circle_id]
      @membership = Membership.new(membership_params)
    end

    private

    def membership_params
        params.require(:membership).merge(circle_id: params[:circle_id], user_id: current_user.id)
    end
end