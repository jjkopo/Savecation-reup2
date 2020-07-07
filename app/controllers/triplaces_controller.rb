class TriplacesController < ApplicationController
  before_action :set_triplace, only: [:show, :edit, :update, :destroy]

  def import
    Triplace.import(params[:file])
    redirect_to root_url, notice: "Products imported"
  end   
  # GET /triplaces
  # GET /triplaces.json
  def index
    @user = User.find(params[:id])
    @triplaces = Triplace.all
  end

  # GET /triplaces/1
  # GET /triplaces/1.json
  def show
  end

  # GET /triplaces/new
  def new
    @triplace = Triplace.new
  end

  # GET /triplaces/1/edit
  def edit
  end

  # POST /triplaces
  # POST /triplaces.json
  def create
    @triplace = Triplace.new(triplace_params)

    respond_to do |format|
      if @triplace.save
        format.html { redirect_to @triplace, notice: 'Triplace was successfully created.' }
        format.json { render :show, status: :created, location: @triplace }
      else
        format.html { render :new }
        format.json { render json: @triplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /triplaces/1
  # PATCH/PUT /triplaces/1.json
  def update
    respond_to do |format|
      if @triplace.update(triplace_params)
        format.html { redirect_to @triplace, notice: 'Triplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @triplace }
      else
        format.html { render :edit }
        format.json { render json: @triplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /triplaces/1
  # DELETE /triplaces/1.json
  def destroy
    @triplace.destroy
    respond_to do |format|
      format.html { redirect_to triplaces_url, notice: 'Triplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_triplace
      @triplace = Triplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def triplace_params
      params.fetch(:triplace, {})
    end 
end
