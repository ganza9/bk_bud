class SativasController < ApplicationController
  before_action :set_sativa, only: [:show, :edit, :update, :destroy]

  # GET /sativas
  # GET /sativas.json
  def index
    @sativas = Sativa.all
  end

  # GET /sativas/1
  # GET /sativas/1.json
  def show
  end

  # GET /sativas/new
  def new
    @sativa = Sativa.new
  end

  # GET /sativas/1/edit
  def edit
  end

  # POST /sativas
  # POST /sativas.json
  def create
    @sativa = Sativa.new(sativa_params)

    respond_to do |format|
      if @sativa.save
        format.html { redirect_to @sativa, notice: 'Sativa was successfully created.' }
        format.json { render :show, status: :created, location: @sativa }
      else
        format.html { render :new }
        format.json { render json: @sativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sativas/1
  # PATCH/PUT /sativas/1.json
  def update
    respond_to do |format|
      if @sativa.update(sativa_params)
        format.html { redirect_to @sativa, notice: 'Sativa was successfully updated.' }
        format.json { render :show, status: :ok, location: @sativa }
      else
        format.html { render :edit }
        format.json { render json: @sativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sativas/1
  # DELETE /sativas/1.json
  def destroy
    @sativa.destroy
    respond_to do |format|
      format.html { redirect_to sativas_url, notice: 'Sativa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sativa
      @sativa = Sativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sativa_params
      params.fetch(:sativa, {})
    end
end
