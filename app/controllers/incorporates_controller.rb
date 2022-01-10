class IncorporatesController < ApplicationController
  before_action :set_incorporate, only: %i[ show edit update destroy ]

  # GET /incorporates or /incorporates.json
  def index
    @incorporates = Incorporate.all
  end

  # GET /incorporates/1 or /incorporates/1.json
  def show
  end

  # GET /incorporates/new
  def new
    @incorporate = Incorporate.new
  end

  # GET /incorporates/1/edit
  def edit
  end

  # POST /incorporates or /incorporates.json
  def create
    @incorporate = Incorporate.new(incorporate_params)

    respond_to do |format|
      if @incorporate.save
        format.html { redirect_to @incorporate, notice: "Incorporate was successfully created." }
        format.json { render :show, status: :created, location: @incorporate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @incorporate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incorporates/1 or /incorporates/1.json
  def update
    respond_to do |format|
      if @incorporate.update(incorporate_params)
        format.html { redirect_to @incorporate, notice: "Incorporate was successfully updated." }
        format.json { render :show, status: :ok, location: @incorporate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @incorporate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incorporates/1 or /incorporates/1.json
  def destroy
    @incorporate.destroy
    respond_to do |format|
      format.html { redirect_to incorporates_url, notice: "Incorporate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incorporate
      @incorporate = Incorporate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incorporate_params
      params.require(:incorporate).permit(:date, :title, :content, :image_1, :image_2, :image_3)
    end
end
