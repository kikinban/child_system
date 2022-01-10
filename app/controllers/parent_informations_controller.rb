class ParentInformationsController < ApplicationController
  before_action :set_parent_information, only: %i[ show edit update destroy ]

  # GET /parent_informations or /parent_informations.json
  def index
    @parent_informations = ParentInformation.all
  end

  # GET /parent_informations/1 or /parent_informations/1.json
  def show
  end

  # GET /parent_informations/new
  def new
    @parent_information = ParentInformation.new
  end

  # GET /parent_informations/1/edit
  def edit
  end

  # POST /parent_informations or /parent_informations.json
  def create
    @parent_information = ParentInformation.new(parent_information_params)

    respond_to do |format|
      if @parent_information.save
        format.html { redirect_to @parent_information, notice: "Parent information was successfully created." }
        format.json { render :show, status: :created, location: @parent_information }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parent_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_informations/1 or /parent_informations/1.json
  def update
    respond_to do |format|
      if @parent_information.update(parent_information_params)
        format.html { redirect_to @parent_information, notice: "Parent information was successfully updated." }
        format.json { render :show, status: :ok, location: @parent_information }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parent_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_informations/1 or /parent_informations/1.json
  def destroy
    @parent_information.destroy
    respond_to do |format|
      format.html { redirect_to parent_informations_url, notice: "Parent information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_information
      @parent_information = ParentInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parent_information_params
      params.require(:parent_information).permit(:date, :title, :content, :file_content)
    end
end
