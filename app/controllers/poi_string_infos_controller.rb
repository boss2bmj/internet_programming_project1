class PoiStringInfosController < ApplicationController
  before_action :set_poi_string_info, only: [:show, :edit, :update, :destroy]

  # GET /poi_string_infos
  # GET /poi_string_infos.json
  def index
    @poi_string_infos = PoiStringInfo.all
  end

  # GET /poi_string_infos/1
  # GET /poi_string_infos/1.json
  def show
  end

  # GET /poi_string_infos/new
  def new
    @poi_string_info = PoiStringInfo.new
  end

  # GET /poi_string_infos/1/edit
  def edit
  end

  # POST /poi_string_infos
  # POST /poi_string_infos.json
  def create
    @poi_string_info = PoiStringInfo.new(poi_string_info_params)

    respond_to do |format|
      if @poi_string_info.save
        format.html { redirect_to @poi_string_info, notice: 'Poi string info was successfully created.' }
        format.json { render :show, status: :created, location: @poi_string_info }
      else
        format.html { render :new }
        format.json { render json: @poi_string_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_string_infos/1
  # PATCH/PUT /poi_string_infos/1.json
  def update
    respond_to do |format|
      if @poi_string_info.update(poi_string_info_params)
        format.html { redirect_to @poi_string_info, notice: 'Poi string info was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_string_info }
      else
        format.html { render :edit }
        format.json { render json: @poi_string_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_string_infos/1
  # DELETE /poi_string_infos/1.json
  def destroy
    @poi_string_info.destroy
    respond_to do |format|
      format.html { redirect_to poi_string_infos_url, notice: 'Poi string info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_string_info
      @poi_string_info = PoiStringInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_string_info_params
      params.require(:poi_string_info).permit(:title_name, :description, :image_url, :guage, :length, :color, :price)
    end
end
