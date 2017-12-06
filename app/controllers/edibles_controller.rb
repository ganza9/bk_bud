class EdiblesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]
  #
  # before_action :only => [:new, :edit] do
  #     redirect_to new_user_session_path unless current_user && current_user.admin
  #   end

  # GET /edibles
  # GET /edibles.json
  def index
    @edibles = Edible.all
  end

  # GET /edibles/1
  # GET /edibles/1.json
  def show
    @edible = Edible.find(params[:id])
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
