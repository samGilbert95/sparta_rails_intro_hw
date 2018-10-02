class ChocolatesController < ApplicationController
  before_action :set_chocolate, only: [:show, :edit, :update, :destroy]

  # GET /chocolates
  # GET /chocolates.json
  def index
    @chocolates = Chocolate.all
  end

  # GET /chocolates/1
  # GET /chocolates/1.json
  def show
    @chocolates = Chocolate.find(params[:id])
  end

  # GET /chocolates/new
  def new
    @chocolates = Chocolate.new
  end

  # GET /chocolates/1/edit
  def edit
    @chocolates = Chocolate.find(params[:id])
  end

  # POST /chocolates
  # POST /chocolates.json
  def create
    @chocolates = Chocolate.new(chocolate_params)
    respond_to do |format|
      if @chocolates.save
        format.html { redirect_to @chocolates}
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /chocolates/1
  # PATCH/PUT /chocolates/1.json
  def update
    @chocolates = Chocolate.find(params[:id])
    respond_to do |format|
      if @chocolates.update(chocolate_params)
        format.html { redirect_to @chocolates}
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /chocolates/1
  # DELETE /chocolates/1.json
  def destroy
    @chocolates.destroy
    respond_to do |format|
      format.html { redirect_to chocolates_url}
    end
  end

  def chocolate_params
    params.require(:chocolate).permit(:name,:choc_type,:cost)
  end

  def set_chocolate
    @chocolates = Chocolate.find(params[:id])
  end

end
