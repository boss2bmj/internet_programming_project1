class PoiRacketInfosController < ApplicationController
  before_action :set_poi_racket_info, only: [:show, :edit, :update, :destroy]

  # GET /poi_racket_infos
  # GET /poi_racket_infos.json
  def index
    @poi_racket_infos = PoiRacketInfo.all
  end

  # GET /poi_racket_infos/1
  # GET /poi_racket_infos/1.json
  def show
  end

  # GET /poi_racket_infos/new
  def new
    @poi_racket_info = PoiRacketInfo.new
  end

  # GET /poi_racket_infos/1/edit
  def edit
  end

  # POST /poi_racket_infos
  # POST /poi_racket_infos.json
  def create
    @poi_racket_info = PoiRacketInfo.new(poi_racket_info_params)

    respond_to do |format|
      if @poi_racket_info.save
        format.html { redirect_to @poi_racket_info, notice: 'Poi racket info was successfully created.' }
        format.json { render :show, status: :created, location: @poi_racket_info }
      else
        format.html { render :new }
        format.json { render json: @poi_racket_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_racket_infos/1
  # PATCH/PUT /poi_racket_infos/1.json
  def update
    respond_to do |format|
      if @poi_racket_info.update(poi_racket_info_params)
        format.html { redirect_to @poi_racket_info, notice: 'Poi racket info was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_racket_info }
      else
        format.html { render :edit }
        format.json { render json: @poi_racket_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_racket_infos/1
  # DELETE /poi_racket_infos/1.json
  def destroy
    @poi_racket_info.destroy
    respond_to do |format|
      format.html { redirect_to poi_racket_infos_url, notice: 'Poi racket info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_racket_info
      @poi_racket_info = PoiRacketInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_racket_info_params
      params.require(:poi_racket_info).permit(:title_name, :description, :image_url, :shaft, :weight, :length, :price)
    end
end
