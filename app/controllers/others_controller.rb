class OthersController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]
  #
  # before_action :only => [:new, :edit] do
  #     redirect_to new_user_session_path unless current_user && current_user.admin
  #   end

  # GET /others
  # GET /others.json
  def index
    @others = Other.all
  end

  # GET /others/1
  # GET /others/1.json
  def show
    @other = Other.find(params[:id])
  end

  # GET /others/new
  def new
    @other = Other.new
  end

  # GET /others/1/edit
  def edit
  end

  # POST /others
  # POST /others.json
  def create
    @other = Other.new(other_params)

    respond_to do |format|
      if @other.save
        format.html { redirect_to @other, notice: 'Other was successfully created.' }
        format.json { render :show, status: :created, location: @other }
      else
        format.html { render :new }
        format.json { render json: @other.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /others/1
  # PATCH/PUT /others/1.json
  def update
    respond_to do |format|
      if @other.update(other_params)
        format.html { redirect_to @other, notice: 'Other was successfully updated.' }
        format.json { render :show, status: :ok, location: @other }
      else
        format.html { render :edit }
        format.json { render json: @other.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /others/1
  # DELETE /others/1.json
  def destroy
    @other.destroy
    respond_to do |format|
      format.html { redirect_to others_url, notice: 'Other was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other
      @other = Other.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_params
      params.require(:other).permit(:name, :price, :thc, :description, :indica_id, :sativa_id)
    end
end
