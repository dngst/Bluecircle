class ChildrenController < ApplicationController
    def index
      @children = Child.all
      render :index
    end

    def show
      @child = Child.find(params[:id])
      render :show
    end

    def new
      @child = Child.new
      render :new
    end
    
  end
