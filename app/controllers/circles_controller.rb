class CirclesController < ApplicationController
  before_action :authenticate_user!, :only => [:join]
  before_action :set_circle, only: [:show, :edit, :update, :destroy]
  # GET /circles
  # GET /circles.json
  def index
    @circles = Circle.all
    if current_user
      @user = current_user
    end
  end

  # GET /circles/1
  # GET /circles/1.json
  def show
     if current_user
      @user = current_user
    end
  end

  # GET /circles/new
  def new
    @circle = Circle.new
     if current_user
      @user = current_user
    end
  end

  def join
    @circle = Circle.find(params[:id])
    @m = @circle.memberships.build(:user_id => current_user.id)
    respond_to do |format|
      if @m.save
        format.html { redirect_to(@circle, :notice => 'You have joined this group.') }
        format.xml  { head :ok }
      else
        format.html { redirect_to(@circle, :notice => 'Join error.') }
        format.xml  { render :xml => @circle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /circles/1/edit
  def edit
  end

  # POST /circles
  # POST /circles.json
  def create
    @circle = Circle.new(circle_params)

    respond_to do |format|
      if @circle.save
        format.html { redirect_to @circle, notice: 'Circle was successfully created.' }
        format.json { render :show, status: :created, location: @circle }
      else
        format.html { render :new }
        format.json { render json: @circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circles/1
  # PATCH/PUT /circles/1.json
  def update
    respond_to do |format|
      if @circle.update(circle_params)
        format.html { redirect_to @circle, notice: 'Circle was successfully updated.' }
        format.json { render :show, status: :ok, location: @circle }
      else
        format.html { render :edit }
        format.json { render json: @circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circles/1
  # DELETE /circles/1.json
  def destroy
    @circle.destroy
    respond_to do |format|
      format.html { redirect_to circles_url, notice: 'Circle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_circle
    @circle = Circle.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def circle_params
    params.require(:circle).permit(:name, :image)
  end
end
