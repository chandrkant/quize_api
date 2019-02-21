class QuizesController < ApplicationController
  before_action :set_quize, only: [:show, :update, :destroy]

  # GET /quizes
  def index
    @quizes = Quize.all

    json_response(@quizes)
  end

  # GET /quizes/1
  def show
    json_response(@quize)
  end

  # POST /quizes
  def create
    @quize = Quize.new(quize_params)

    if @quize.save
       json_response(@quize)
    else
       json_response(@quize.errors)
    end
  end

  # PATCH/PUT /quizes/1
  def update
    if @quize.update(quize_params)
      json_response(@quize)
    else
      json_response(@quize.errors)
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
      # params.fetch(:quize, {:name, :user_id, question_attributes: [:id,:name,:_destroy, answers_attributes: [:id,:name,:_destroy, :is_correct]]})
      params.require(:quize).permit(:name, :user_id, question_attributes: [:id,:name, :answer,:_destroy, answers_attributes: [:id,:name,:_destroy, :is_correct]] )
    end
end
# .permit(:name, :user_id, questions_attributes: [:id,:name, :answer,:_destroy, options_attributes: [:id,:name,:_destroy, :is_correct]] )