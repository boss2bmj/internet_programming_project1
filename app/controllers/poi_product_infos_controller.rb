# == Schema Information
#
# Table name: poi_product_infos
#
#  id                   :integer          not null, primary key
#  detailed_description :text
#  product_id           :integer
#  poi_info_id          :integer
#  poi_info_type        :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_poi_product_infos_on_poi_info_id    (poi_info_id)
#  index_poi_product_infos_on_poi_info_type  (poi_info_type)
#  index_poi_product_infos_on_product_id     (product_id)
#

class PoiProductInfosController < ApplicationController
  before_action :set_poi_product_info, only: [:show, :edit, :update, :destroy]

  # GET /poi_product_infos
  # GET /poi_product_infos.json
  def index
    @poi_product_infos = PoiProductInfo.all
  end

  # GET /poi_product_infos/1
  # GET /poi_product_infos/1.json
  def show
  end

  # GET /poi_product_infos/new
  def new
    @poi_product_info = PoiProductInfo.new
  end

  # GET /poi_product_infos/1/edit
  def edit
  end

  # POST /poi_product_infos
  # POST /poi_product_infos.json
  def create
    @poi_product_info = PoiProductInfo.new(poi_product_info_params)

    respond_to do |format|
      if @poi_product_info.save
        format.html { redirect_to @poi_product_info, notice: 'Poi product info was successfully created.' }
        format.json { render :show, status: :created, location: @poi_product_info }
      else
        format.html { render :new }
        format.json { render json: @poi_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_product_infos/1
  # PATCH/PUT /poi_product_infos/1.json
  def update
    respond_to do |format|
      if @poi_product_info.update(poi_product_info_params)
        format.html { redirect_to @poi_product_info, notice: 'Poi product info was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_product_info }
      else
        format.html { render :edit }
        format.json { render json: @poi_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_product_infos/1
  # DELETE /poi_product_infos/1.json
  def destroy
    @poi_product_info.destroy
    respond_to do |format|
      format.html { redirect_to poi_product_infos_url, notice: 'Poi product info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_product_info
      @poi_product_info = PoiProductInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_product_info_params
      params.require(:poi_product_info).permit(:detailed_description, :product_id, :poi_info_id, :poi_info_type)
    end
end
