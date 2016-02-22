class PoiShuttlecocksInfosController < ApplicationController
  before_action :set_poi_shuttlecocks_info, only: [:show, :edit, :update, :destroy]

  # GET /poi_shuttlecocks_infos
  # GET /poi_shuttlecocks_infos.json
  def index
    @poi_shuttlecocks_infos = PoiShuttlecocksInfo.all
  end

  # GET /poi_shuttlecocks_infos/1
  # GET /poi_shuttlecocks_infos/1.json
  def show
  end

  # GET /poi_shuttlecocks_infos/new
  def new
    @poi_shuttlecocks_info = PoiShuttlecocksInfo.new
  end

  # GET /poi_shuttlecocks_infos/1/edit
  def edit
  end

  # POST /poi_shuttlecocks_infos
  # POST /poi_shuttlecocks_infos.json
  def create
    @poi_shuttlecocks_info = PoiShuttlecocksInfo.new(poi_shuttlecocks_info_params)

    respond_to do |format|
      if @poi_shuttlecocks_info.save
        format.html { redirect_to @poi_shuttlecocks_info, notice: 'Poi shuttlecocks info was successfully created.' }
        format.json { render :show, status: :created, location: @poi_shuttlecocks_info }
      else
        format.html { render :new }
        format.json { render json: @poi_shuttlecocks_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_shuttlecocks_infos/1
  # PATCH/PUT /poi_shuttlecocks_infos/1.json
  def update
    respond_to do |format|
      if @poi_shuttlecocks_info.update(poi_shuttlecocks_info_params)
        format.html { redirect_to @poi_shuttlecocks_info, notice: 'Poi shuttlecocks info was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_shuttlecocks_info }
      else
        format.html { render :edit }
        format.json { render json: @poi_shuttlecocks_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_shuttlecocks_infos/1
  # DELETE /poi_shuttlecocks_infos/1.json
  def destroy
    @poi_shuttlecocks_info.destroy
    respond_to do |format|
      format.html { redirect_to poi_shuttlecocks_infos_url, notice: 'Poi shuttlecocks info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_shuttlecocks_info
      @poi_shuttlecocks_info = PoiShuttlecocksInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_shuttlecocks_info_params
      params.require(:poi_shuttlecocks_info).permit(:title_name, :description, :image_url, :price, :stock, :image)
    end
end
