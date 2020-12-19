class OenologistsController < ApplicationController
  before_action :set_oenologist, only: [:show, :edit, :update, :destroy]

  # GET /oenologists
  # GET /oenologists.json
  def index
    @oenologists = Oenologist.all
  end

  # GET /oenologists/1
  # GET /oenologists/1.json
  def show
  end

  # GET /oenologists/new
  def new
    @oenologist = Oenologist.new
  end

  # GET /oenologists/1/edit
  def edit
  end

  # POST /oenologists
  # POST /oenologists.json
  def create
    @oenologist = Oenologist.new(name: oenlogist_params[:name], age: oenlogist_params[:age], nationality: oenlogist_params[:nationality])

    respond_to do |format|
      if @oenologist.save
        oenologist_params[:magazine_ids].reject(&:empty?).each_with_index do |magazine_id, index|
          magazine_list = oenlogist_params[:positions].reject(&:empty?)
          OenologistMagazine.create(oenologist_id: @oenologist.id, magazine_id: magazine_id, position: magazine_list[index])
        end
        format.html { redirect_to @oenologist, notice: 'Oenologist was successfully created.' }
        format.json { render :show, status: :created, location: @oenologist }
      else
        format.html { render :new }
        format.json { render json: @oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oenologists/1
  # PATCH/PUT /oenologists/1.json
  def update
    respond_to do |format|
      if @oenologist.update(oenologist_params)
        format.html { redirect_to @oenologist, notice: 'Oenologist was successfully updated.' }
        format.json { render :show, status: :ok, location: @oenologist }
      else
        format.html { render :edit }
        format.json { render json: @oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oenologists/1
  # DELETE /oenologists/1.json
  def destroy
    @oenologist.destroy
    respond_to do |format|
      format.html { redirect_to oenologists_url, notice: 'Oenologist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oenologist
      @oenologist = Oenologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oenologist_params
      params.require(:oenologist).permit(:name, :age, :nationality, magazine_ids: [], positions: [])
    end
end
