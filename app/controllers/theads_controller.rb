class TheadsController < ApplicationController
  before_action :set_thead, only: [:show, :edit, :update, :destroy]

  # GET /theads
  # GET /theads.json
  def index
    @theads = Thead.all
  end

  # GET /theads/1
  # GET /theads/1.json
  def show
  end

  # GET /theads/new
  def new
    @thead = Thead.new
  end

  # GET /theads/1/edit
  def edit
  end

  # POST /theads
  # POST /theads.json
  def create
    @thead = Thead.new(thead_params)

    respond_to do |format|
      if @thead.save
        format.html { redirect_to @thead, notice: 'Thead was successfully created.' }
        format.json { render :show, status: :created, location: @thead }
      else
        format.html { render :new }
        format.json { render json: @thead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theads/1
  # PATCH/PUT /theads/1.json
  def update
    respond_to do |format|
      if @thead.update(thead_params)
        format.html { redirect_to @thead, notice: 'Thead was successfully updated.' }
        format.json { render :show, status: :ok, location: @thead }
      else
        format.html { render :edit }
        format.json { render json: @thead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theads/1
  # DELETE /theads/1.json
  def destroy
    @thead.destroy
    respond_to do |format|
      format.html { redirect_to theads_url, notice: 'Thead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thead
      @thead = Thead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thead_params
      params.require(:thead).permit(:head, :name)
    end
end
