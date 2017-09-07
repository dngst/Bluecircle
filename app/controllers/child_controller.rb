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

    def create
      @child = Child.new(child_params)
    if @child.save
      redirect_to children_path
    else
      render:new
    end
  end

  def edit
    @child = Child.find(params[:id])
    render :edit
  end

  def update
    @child = Child.find(params[:id])
    if @child.update(child_params)
      redirect_to children_path
    else
      render :edit
    end
  end
  
  private
  def child_params
    params.require(:child).permit(:name, :age, :home, :school, :aspirations, :siblings)
  end

  end
