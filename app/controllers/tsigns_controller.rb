class TsignsController < ApplicationController
  before_action :set_tsign, only: [:show, :edit, :update, :destroy]

  # GET /tsigns
  # GET /tsigns.json
  def index
    @tsigns = Tsign.all
  end

  # GET /tsigns/1
  # GET /tsigns/1.json
  def show
  end

  # GET /tsigns/new
  def new
    @tsign = Tsign.new
  end

  # GET /tsigns/1/edit
  def edit
  end

  # POST /tsigns
  # POST /tsigns.json
  def create
    @tsign = Tsign.new(tsign_params)

    respond_to do |format|
      if @tsign.save
        format.html { redirect_to @tsign, notice: 'Tsign was successfully created.' }
        format.json { render :show, status: :created, location: @tsign }
      else
        format.html { render :new }
        format.json { render json: @tsign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tsigns/1
  # PATCH/PUT /tsigns/1.json
  def update
    respond_to do |format|
      if @tsign.update(tsign_params)
        format.html { redirect_to @tsign, notice: 'Tsign was successfully updated.' }
        format.json { render :show, status: :ok, location: @tsign }
      else
        format.html { render :edit }
        format.json { render json: @tsign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tsigns/1
  # DELETE /tsigns/1.json
  def destroy
    @tsign.destroy
    respond_to do |format|
      format.html { redirect_to tsigns_url, notice: 'Tsign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tsign
      @tsign = Tsign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tsign_params
      params.require(:tsign).permit(:signature)
    end
end
