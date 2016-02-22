class PoiApparelInfosController < ApplicationController
  before_action :set_poi_apparel_info, only: [:show, :edit, :update, :destroy]

  # GET /poi_apparel_infos
  # GET /poi_apparel_infos.json
  def index
    @poi_apparel_infos = PoiApparelInfo.all
  end

  # GET /poi_apparel_infos/1
  # GET /poi_apparel_infos/1.json
  def show
  end

  # GET /poi_apparel_infos/new
  def new
    @poi_apparel_info = PoiApparelInfo.new
  end

  # GET /poi_apparel_infos/1/edit
  def edit
  end

  # POST /poi_apparel_infos
  # POST /poi_apparel_infos.json
  def create
    @poi_apparel_info = PoiApparelInfo.new(poi_apparel_info_params)

    respond_to do |format|
      if @poi_apparel_info.save
        format.html { redirect_to @poi_apparel_info, notice: 'Poi apparel info was successfully created.' }
        format.json { render :show, status: :created, location: @poi_apparel_info }
      else
        format.html { render :new }
        format.json { render json: @poi_apparel_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_apparel_infos/1
  # PATCH/PUT /poi_apparel_infos/1.json
  def update
    respond_to do |format|
      if @poi_apparel_info.update(poi_apparel_info_params)
        format.html { redirect_to @poi_apparel_info, notice: 'Poi apparel info was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_apparel_info }
      else
        format.html { render :edit }
        format.json { render json: @poi_apparel_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_apparel_infos/1
  # DELETE /poi_apparel_infos/1.json
  def destroy
    @poi_apparel_info.destroy
    respond_to do |format|
      format.html { redirect_to poi_apparel_infos_url, notice: 'Poi apparel info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_apparel_info
      @poi_apparel_info = PoiApparelInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_apparel_info_params
      params.require(:poi_apparel_info).permit(:title_name, :description, :image_url, :price, :stock)
    end
end
