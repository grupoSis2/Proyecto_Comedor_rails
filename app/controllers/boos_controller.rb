class BoosController < ApplicationController
  before_action :set_boo, only: [:show, :edit, :update, :destroy]

  # GET /boos
  # GET /boos.json
  def index
    @boos = Boo.all
  end

  # GET /boos/1
  # GET /boos/1.json
  def show
  end

  # GET /boos/new
  def new
    @boo = Boo.new
  end

  # GET /boos/1/edit
  def edit
  end

  # POST /boos
  # POST /boos.json
  def create
    @boo = Boo.new(boo_params)

    respond_to do |format|
      if @boo.save
        format.html { redirect_to @boo, notice: 'Boo was successfully created.' }
        format.json { render :show, status: :created, location: @boo }
      else
        format.html { render :new }
        format.json { render json: @boo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boos/1
  # PATCH/PUT /boos/1.json
  def update
    respond_to do |format|
      if @boo.update(boo_params)
        format.html { redirect_to @boo, notice: 'Boo was successfully updated.' }
        format.json { render :show, status: :ok, location: @boo }
      else
        format.html { render :edit }
        format.json { render json: @boo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boos/1
  # DELETE /boos/1.json
  def destroy
    @boo.destroy
    respond_to do |format|
      format.html { redirect_to boos_url, notice: 'Boo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boo
      @boo = Boo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boo_params
      params.require(:boo).permit(:hola)
    end
end
