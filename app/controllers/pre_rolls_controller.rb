class PreRollsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]
  #
  # before_action :only => [:new, :edit] do
  #     redirect_to new_user_session_path unless current_user && current_user.admin
  #   end

  # GET /pre_rolls
  # GET /pre_rolls.json
  def index
    @pre_rolls = PreRoll.all
  end

  # GET /pre_rolls/1
  # GET /pre_rolls/1.json
  def show
    @pre_roll = PreRoll.find(params[:id])
  end

  # GET /pre_rolls/new
  def new
    @pre_roll = PreRoll.new
  end

  # GET /pre_rolls/1/edit
  def edit
  end

  # POST /pre_rolls
  # POST /pre_rolls.json
  def create
    @pre_roll = PreRoll.new(pre_roll_params)

    respond_to do |format|
      if @pre_roll.save
        format.html { redirect_to @pre_roll, notice: 'Pre roll was successfully created.' }
        format.json { render :show, status: :created, location: @pre_roll }
      else
        format.html { render :new }
        format.json { render json: @pre_roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_rolls/1
  # PATCH/PUT /pre_rolls/1.json
  def update
    respond_to do |format|
      if @pre_roll.update(pre_roll_params)
        format.html { redirect_to @pre_roll, notice: 'Pre roll was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_roll }
      else
        format.html { render :edit }
        format.json { render json: @pre_roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_rolls/1
  # DELETE /pre_rolls/1.json
  def destroy
    @pre_roll.destroy
    respond_to do |format|
      format.html { redirect_to pre_rolls_url, notice: 'Pre roll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_roll
      @pre_roll = PreRoll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_roll_params
      params.require(:pre_roll).permit(:name, :price, :thc, :description, :indica_id, :sativa_id)
    end
end
