class EdiblesController < ApplicationController
  before_action :set_edible, only: [:show, :edit, :update, :destroy]

  # GET /edibles
  # GET /edibles.json
  def index
    @edibles = Edible.all
  end

  # GET /edibles/1
  # GET /edibles/1.json
  def show
  end

  # GET /edibles/new
  def new
    @edible = Edible.new
  end

  # GET /edibles/1/edit
  def edit
  end

  # POST /edibles
  # POST /edibles.json
  def create
    @edible = Edible.new(edible_params)

    respond_to do |format|
      if @edible.save
        format.html { redirect_to @edible, notice: 'Edible was successfully created.' }
        format.json { render :show, status: :created, location: @edible }
      else
        format.html { render :new }
        format.json { render json: @edible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edibles/1
  # PATCH/PUT /edibles/1.json
  def update
    respond_to do |format|
      if @edible.update(edible_params)
        format.html { redirect_to @edible, notice: 'Edible was successfully updated.' }
        format.json { render :show, status: :ok, location: @edible }
      else
        format.html { render :edit }
        format.json { render json: @edible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edibles/1
  # DELETE /edibles/1.json
  def destroy
    @edible.destroy
    respond_to do |format|
      format.html { redirect_to edibles_url, notice: 'Edible was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edible
      @edible = Edible.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edible_params
      params.require(:edible).permit(:name, :price, :thc, :description, :indica_id, :sativa_id)
    end
end
