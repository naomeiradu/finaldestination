class MslanesController < ApplicationController
  before_action :set_mslane, only: [:show, :edit, :update, :destroy]

  # GET /mslanes
  # GET /mslanes.json
  def index
    @mslanes = Mslane.all
  end

  # GET /mslanes/1
  # GET /mslanes/1.json
  def show
  end

  # GET /mslanes/new
  def new
    @mslane = Mslane.new
  end

  # GET /mslanes/1/edit
  def edit
  end

  # POST /mslanes
  # POST /mslanes.json
  def create
    @mslane = Mslane.new(mslane_params)

    respond_to do |format|
      if @mslane.save
        format.html { redirect_to @mslane, notice: 'Mslane was successfully created.' }
        format.json { render :show, status: :created, location: @mslane }
      else
        format.html { render :new }
        format.json { render json: @mslane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mslanes/1
  # PATCH/PUT /mslanes/1.json
  def update
    respond_to do |format|
      if @mslane.update(mslane_params)
        format.html { redirect_to @mslane, notice: 'Mslane was successfully updated.' }
        format.json { render :show, status: :ok, location: @mslane }
      else
        format.html { render :edit }
        format.json { render json: @mslane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mslanes/1
  # DELETE /mslanes/1.json
  def destroy
    @mslane.destroy
    respond_to do |format|
      format.html { redirect_to mslanes_url, notice: 'Mslane was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mslane
      @mslane = Mslane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mslane_params
      params.require(:mslane).permit(:Title, :Category, :Release, :Cost)
    end
end
