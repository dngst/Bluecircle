class ChildrenController < ApplicationController
    def index
      @children = Chid.all
      render :index
    end
  end
