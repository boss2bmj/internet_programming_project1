class PoiGripsInfosController < ApplicationController
  before_action :set_poi_grips_info, only: [:show, :edit, :update, :destroy]

  # GET /poi_grips_infos
  # GET /poi_grips_infos.json
  def index
    @poi_grips_infos = PoiGripsInfo.all
  end

  # GET /poi_grips_infos/1
  # GET /poi_grips_infos/1.json
  def show
  end

  # GET /poi_grips_infos/new
  def new
    @poi_grips_info = PoiGripsInfo.new
  end

  # GET /poi_grips_infos/1/edit
  def edit
  end

  # POST /poi_grips_infos
  # POST /poi_grips_infos.json
  def create
    @poi_grips_info = PoiGripsInfo.new(poi_grips_info_params)

    respond_to do |format|
      if @poi_grips_info.save
        format.html { redirect_to @poi_grips_info, notice: 'Poi grips info was successfully created.' }
        format.json { render :show, status: :created, location: @poi_grips_info }
      else
        format.html { render :new }
        format.json { render json: @poi_grips_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_grips_infos/1
  # PATCH/PUT /poi_grips_infos/1.json
  def update
    respond_to do |format|
      if @poi_grips_info.update(poi_grips_info_params)
        format.html { redirect_to @poi_grips_info, notice: 'Poi grips info was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_grips_info }
      else
        format.html { render :edit }
        format.json { render json: @poi_grips_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_grips_infos/1
  # DELETE /poi_grips_infos/1.json
  def destroy
    @poi_grips_info.destroy
    respond_to do |format|
      format.html { redirect_to poi_grips_infos_url, notice: 'Poi grips info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_grips_info
      @poi_grips_info = PoiGripsInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_grips_info_params
      params.require(:poi_grips_info).permit(:title_name, :description, :image_url, :color, :price, :image)
    end
end
