class DaysController < ApplicationController
  before_action :set_day, only: [:show, :update, :destroy]

  # GET /days
  def index
    @days = Day.all

    render json: @days
  end

  # GET /days/1
  def show
    render json: @day
  end

  # POST /days
  def create
    @day = Day.where(created_at: Time.now.beginning_of_day.utc..Time.now.end_of_day.utc).first_or_create!
    @day.update_attributes(day_params)
    byebug

    if @day.save
      render json: @day, status: :created, location: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /days/1
  def update
    if @day.update(day_params)
      render json: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /days/1
  def destroy
    @day.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def day_params
      params.require(:day).permit(:word1, :word2, :word3)
    end
end