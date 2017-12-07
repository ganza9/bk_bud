class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, :except => [:show]
  #
  before_action :only => [:new, :edit] do
      redirect_to new_user_session_path unless current_user
    end
  before_action :only => [:edit] do
      redirect_to new_user_session_path unless current_user && current_user.admin
    end

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])
  end

  # GET /reviews/new
  def new
    @review = Review.new
    binding.pry
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    if params[:flower_id]
      @flower = Flower.find(params[:flower_id])
      @review = @flower.review.new(review_params)
    elsif params[:edible_id]
      @edible = Edible.find(params[:edible_id])
      @review = @edible.review.new
    elsif params[:other_id]
      @other = Other.find(params[:other_id])
      @review = @other.review.new
    elsif params[:pre_roll_id]
      @pre_roll = PreRoll.find(params[:pre_roll_id])
      @review = @pre_roll.review.new
    end

    respond_to do |format|
      binding.pry
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:reviewer, :review_content, :flower_id)
    end
end
