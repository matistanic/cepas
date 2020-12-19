class OenologistWinesController < ApplicationController
  before_action :set_oenologist_wine, only: [:show, :edit, :update, :destroy]

  # GET /oenologist_wines
  # GET /oenologist_wines.json
  def index
    @oenologist_wines = OenologistWine.all
  end

  # GET /oenologist_wines/1
  # GET /oenologist_wines/1.json
  def show
  end

  # GET /oenologist_wines/new
  def new
    @oenologist_wine = OenologistWine.new
  end

  # GET /oenologist_wines/1/edit
  def edit
  end

  # POST /oenologist_wines
  # POST /oenologist_wines.json
  def create
    @oenologist_wine = OenologistWine.new(oenologist_wine_params)

    respond_to do |format|
      if @oenologist_wine.save
        format.html { redirect_to @oenologist_wine, notice: 'Oenologist wine was successfully created.' }
        format.json { render :show, status: :created, location: @oenologist_wine }
      else
        format.html { render :new }
        format.json { render json: @oenologist_wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oenologist_wines/1
  # PATCH/PUT /oenologist_wines/1.json
  def update
    respond_to do |format|
      if @oenologist_wine.update(oenologist_wine_params)
        format.html { redirect_to @oenologist_wine, notice: 'Oenologist wine was successfully updated.' }
        format.json { render :show, status: :ok, location: @oenologist_wine }
      else
        format.html { render :edit }
        format.json { render json: @oenologist_wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oenologist_wines/1
  # DELETE /oenologist_wines/1.json
  def destroy
    @oenologist_wine.destroy
    respond_to do |format|
      format.html { redirect_to oenologist_wines_url, notice: 'Oenologist wine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oenologist_wine
      @oenologist_wine = OenologistWine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oenologist_wine_params
      params.require(:oenologist_wine).permit(:oenologist_id, :wine_id, :grade)
    end
end
