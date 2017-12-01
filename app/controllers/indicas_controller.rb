class IndicasController < ApplicationController
  before_action :set_indica, only: [:show, :edit, :update, :destroy]

  # GET /indicas
  # GET /indicas.json
  def index
    @indicas = Indica.all
  end

  # GET /indicas/1
  # GET /indicas/1.json
  def show
  end

  # GET /indicas/new
  def new
    @indica = Indica.new
  end

  # GET /indicas/1/edit
  def edit
  end

  # POST /indicas
  # POST /indicas.json
  def create
    @indica = Indica.new(indica_params)

    respond_to do |format|
      if @indica.save
        format.html { redirect_to @indica, notice: 'Indica was successfully created.' }
        format.json { render :show, status: :created, location: @indica }
      else
        format.html { render :new }
        format.json { render json: @indica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicas/1
  # PATCH/PUT /indicas/1.json
  def update
    respond_to do |format|
      if @indica.update(indica_params)
        format.html { redirect_to @indica, notice: 'Indica was successfully updated.' }
        format.json { render :show, status: :ok, location: @indica }
      else
        format.html { render :edit }
        format.json { render json: @indica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicas/1
  # DELETE /indicas/1.json
  def destroy
    @indica.destroy
    respond_to do |format|
      format.html { redirect_to indicas_url, notice: 'Indica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indica
      @indica = Indica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indica_params
      params.fetch(:indica, {})
    end
end
