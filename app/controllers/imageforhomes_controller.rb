# == Schema Information
#
# Table name: imageforhomes
#
#  id                 :integer          not null, primary key
#  image_name         :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class ImageforhomesController < ApplicationController
  before_action :set_imageforhome, only: [:show, :edit, :update, :destroy]

  # GET /imageforhomes
  # GET /imageforhomes.json
  def index
    @imageforhomes = Imageforhome.all
  end

  # GET /imageforhomes/1
  # GET /imageforhomes/1.json
  def show
  end

  # GET /imageforhomes/new
  def new
    @imageforhome = Imageforhome.new
  end

  # GET /imageforhomes/1/edit
  def edit
  end

  # POST /imageforhomes
  # POST /imageforhomes.json
  def create
    @imageforhome = Imageforhome.new(imageforhome_params)

    respond_to do |format|
      if @imageforhome.save
        format.html { redirect_to @imageforhome, notice: 'Imageforhome was successfully created.' }
        format.json { render :show, status: :created, location: @imageforhome }
      else
        format.html { render :new }
        format.json { render json: @imageforhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imageforhomes/1
  # PATCH/PUT /imageforhomes/1.json
  def update
    respond_to do |format|
      if @imageforhome.update(imageforhome_params)
        format.html { redirect_to @imageforhome, notice: 'Imageforhome was successfully updated.' }
        format.json { render :show, status: :ok, location: @imageforhome }
      else
        format.html { render :edit }
        format.json { render json: @imageforhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageforhomes/1
  # DELETE /imageforhomes/1.json
  def destroy
    @imageforhome.destroy
    respond_to do |format|
      format.html { redirect_to imageforhomes_url, notice: 'Imageforhome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imageforhome
      @imageforhome = Imageforhome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imageforhome_params
      params.require(:imageforhome).permit(:image_name, :description, :image)
    end
end
