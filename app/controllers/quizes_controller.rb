class QuizesController < ApplicationController
  before_action :set_quize, only: [:show, :update, :destroy]

  # GET /quizes
  def index
    @quizes = Quize.all

    render json: @quizes
  end

  # GET /quizes/1
  def show
    render json: @quize
  end

  # POST /quizes
  def create
    @quize = Quize.new(quize_params)

    if @quize.save
      render json: @quize, status: :created, location: @quize
    else
      render json: @quize.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizes/1
  def update
    if @quize.update(quize_params)
      render json: @quize
    else
      render json: @quize.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizes/1
  def destroy
    @quize.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quize
      @quize = Quize.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quize_params
      params.fetch(:quize, {})
    end
end
