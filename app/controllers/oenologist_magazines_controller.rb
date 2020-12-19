class OenologistMagazinesController < ApplicationController
  before_action :set_oenologist_magazine, only: [:show, :edit, :update, :destroy]

  # GET /oenologist_magazines
  # GET /oenologist_magazines.json
  def index
    @oenologist_magazines = OenologistMagazine.all
  end

  # GET /oenologist_magazines/1
  # GET /oenologist_magazines/1.json
  def show
  end

  # GET /oenologist_magazines/new
  def new
    @oenologist_magazine = OenologistMagazine.new
  end

  # GET /oenologist_magazines/1/edit
  def edit
  end

  # POST /oenologist_magazines
  # POST /oenologist_magazines.json
  def create
    @oenologist_magazine = OenologistMagazine.new(oenologist_magazine_params)

    respond_to do |format|
      if @oenologist_magazine.save
        format.html { redirect_to @oenologist_magazine, notice: 'Oenologist magazine was successfully created.' }
        format.json { render :show, status: :created, location: @oenologist_magazine }
      else
        format.html { render :new }
        format.json { render json: @oenologist_magazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oenologist_magazines/1
  # PATCH/PUT /oenologist_magazines/1.json
  def update
    respond_to do |format|
      if @oenologist_magazine.update(oenologist_magazine_params)
        format.html { redirect_to @oenologist_magazine, notice: 'Oenologist magazine was successfully updated.' }
        format.json { render :show, status: :ok, location: @oenologist_magazine }
      else
        format.html { render :edit }
        format.json { render json: @oenologist_magazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oenologist_magazines/1
  # DELETE /oenologist_magazines/1.json
  def destroy
    @oenologist_magazine.destroy
    respond_to do |format|
      format.html { redirect_to oenologist_magazines_url, notice: 'Oenologist magazine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oenologist_magazine
      @oenologist_magazine = OenologistMagazine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oenologist_magazine_params
      params.require(:oenologist_magazine).permit(:oenologist_id, :magazine_id, :position)
    end
end
