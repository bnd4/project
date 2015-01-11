class TbodiesController < ApplicationController
  before_action :set_tbody, only: [:show, :edit, :update, :destroy]

  # GET /tbodies
  # GET /tbodies.json
  def index
    @tbodies = Tbody.all
  end

  # GET /tbodies/1
  # GET /tbodies/1.json
  def show
  end

  # GET /tbodies/new
  def new
    @tbody = Tbody.new
  end

  # GET /tbodies/1/edit
  def edit
  end

  # POST /tbodies
  # POST /tbodies.json
  def create
    @tbody = Tbody.new(tbody_params)

    respond_to do |format|
      if @tbody.save
        format.html { redirect_to @tbody, notice: 'Tbody was successfully created.' }
        format.json { render :show, status: :created, location: @tbody }
      else
        format.html { render :new }
        format.json { render json: @tbody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbodies/1
  # PATCH/PUT /tbodies/1.json
  def update
    respond_to do |format|
      if @tbody.update(tbody_params)
        format.html { redirect_to @tbody, notice: 'Tbody was successfully updated.' }
        format.json { render :show, status: :ok, location: @tbody }
      else
        format.html { render :edit }
        format.json { render json: @tbody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbodies/1
  # DELETE /tbodies/1.json
  def destroy
    @tbody.destroy
    respond_to do |format|
      format.html { redirect_to tbodies_url, notice: 'Tbody was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbody
      @tbody = Tbody.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tbody_params
      params.require(:tbody).permit(:main, :name)
    end
end
