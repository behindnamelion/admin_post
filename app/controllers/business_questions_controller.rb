class BusinessQuestionsController < ApplicationController
  before_action :set_business_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :require_permission, only: [:edit, :update, :destroy]

  # GET /business_questions
  # GET /business_questions.json
  def index
    @business_questions = BusinessQuestion.all
  end

  # GET /business_questions/1
  # GET /business_questions/1.json
  def show
  end

  # GET /business_questions/new
  def new
    @business_question = BusinessQuestion.new
  end

  # GET /business_questions/1/edit
  def edit
  end

  # POST /business_questions
  # POST /business_questions.json
  def create
    @business_question = BusinessQuestion.new(business_question_params)
    @business_question.user = current_user

    respond_to do |format|
      if @business_question.save
        format.html { redirect_to @business_question, notice: 'Business question was successfully created.' }
        format.json { render :show, status: :created, location: @business_question }
      else
        format.html { render :new }
        format.json { render json: @business_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_questions/1
  # PATCH/PUT /business_questions/1.json
  def update
    respond_to do |format|
      if @business_question.update(business_question_params)
        format.html { redirect_to @business_question, notice: 'Business question was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_question }
      else
        format.html { render :edit }
        format.json { render json: @business_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_questions/1
  # DELETE /business_questions/1.json
  def destroy
    @business_question.destroy
    respond_to do |format|
      format.html { redirect_to business_questions_url, notice: 'Business question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_question
      @business_question = BusinessQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def business_question_params
      params.require(:business_question).permit(:title, :body, :asktime, :phone, :email, :company, :user_id)
    end
    
    def require_permission
      if current_user != @business_question.user
        redirect_to root_path, notice: '게시물에 대한 접근 권한이 없습니다.'
      end
    end

end
