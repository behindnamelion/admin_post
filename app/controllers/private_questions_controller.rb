class PrivateQuestionsController < ApplicationController
  before_action :set_private_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /private_questions
  # GET /private_questions.json
  def index
    @private_questions = PrivateQuestion.all
  end

  # GET /private_questions/1
  # GET /private_questions/1.json
  def show
  end

  # GET /private_questions/new
  def new
    @private_question = PrivateQuestion.new
  end

  # GET /private_questions/1/edit
  def edit
  end

  # POST /private_questions
  # POST /private_questions.json
  def create
    @private_question = PrivateQuestion.new(private_question_params)

    respond_to do |format|
      if @private_question.save
        format.html { redirect_to @private_question, notice: 'Private question was successfully created.' }
        format.json { render :show, status: :created, location: @private_question }
      else
        format.html { render :new }
        format.json { render json: @private_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_questions/1
  # PATCH/PUT /private_questions/1.json
  def update
    respond_to do |format|
      if @private_question.update(private_question_params)
        format.html { redirect_to @private_question, notice: 'Private question was successfully updated.' }
        format.json { render :show, status: :ok, location: @private_question }
      else
        format.html { render :edit }
        format.json { render json: @private_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_questions/1
  # DELETE /private_questions/1.json
  def destroy
    @private_question.destroy
    respond_to do |format|
      format.html { redirect_to private_questions_url, notice: 'Private question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_question
      @private_question = PrivateQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def private_question_params
      params.require(:private_question).permit(:title, :body, :asktime, :question_type)
    end
end
