class TermsofservicesController < ApplicationController
  before_action :set_termsofservice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # GET /termsofservices
  # GET /termsofservices.json
  def index
    @searched_termsofservices = Termsofservice.search(params[:search], params[:date_from], params[:date_to])
    @pagy, @termsofservices = pagy(@searched_termsofservices, items:10)
  end

  # GET /termsofservices/1
  # GET /termsofservices/1.json
  def show
  end

  # GET /termsofservices/new
  def new
    @termsofservice = Termsofservice.new
  end

  # GET /termsofservices/1/edit
  def edit
  end

  # POST /termsofservices
  # POST /termsofservices.json
  def create
    @termsofservice = Termsofservice.new(termsofservice_params)

    respond_to do |format|
      if @termsofservice.save
        format.html { redirect_to @termsofservice, notice: 'Termsofservice was successfully created.' }
        format.json { render :show, status: :created, location: @termsofservice }
      else
        format.html { render :new }
        format.json { render json: @termsofservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /termsofservices/1
  # PATCH/PUT /termsofservices/1.json
  def update
    respond_to do |format|
      if @termsofservice.update(termsofservice_params)
        format.html { redirect_to @termsofservice, notice: 'Termsofservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @termsofservice }
      else
        format.html { render :edit }
        format.json { render json: @termsofservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /termsofservices/1
  # DELETE /termsofservices/1.json
  def destroy
    @termsofservice.destroy
    respond_to do |format|
      format.html { redirect_to termsofservices_url, notice: 'Termsofservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_termsofservice
      @termsofservice = Termsofservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def termsofservice_params
      params.require(:termsofservice).permit(:title, :body, :isshown, 
      :category,
      :search, :date_from, :date_to)
    end
end
