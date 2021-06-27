class HorsesController < ApplicationController
  before_action :set_horse, only: [:show, :update, :destroy]

  # GET /horses
  def index
    @horses = Horse.all

    render json: @horses
  end

  # GET /horses/1
  def show
    render json: @horse
  end

  # POST /horses
  def create
    @horse = Horse.new(horse_params)

    if @horse.save
      render json: @horse, status: :created, location: @horse
    else
      render json: @horse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /horses/1
  def update
    if @horse.update(horse_params)
      render json: @horse
    else
      render json: @horse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /horses/1
  def destroy
    @horse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horse
      @horse = Horse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def horse_params
      params.require(:horse).permit(:name, :power, :last_race, :year)
    end
end
