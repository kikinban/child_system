class StampingsController < ApplicationController
  before_action :set_stamping, only: %i[ show edit update destroy ]

  # GET /stampings or /stampings.json
  def index
    @stampings = Stamping.all
  end

  # GET /stampings/1 or /stampings/1.json
  def show
  end

  # GET /stampings/new
  def new
    @stamping = Stamping.new
  end

  # GET /stampings/1/edit
  def edit
  end

  # POST /stampings or /stampings.json
  def create
    @stamping = Stamping.new(stamping_params)
    respond_to do |format|
      if @stamping.save
        format.html { redirect_to @stamping, notice: "打刻されました" }
        format.json { render :show, status: :created, location: @stamping }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stamping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stampings/1 or /stampings/1.json
  def update
    respond_to do |format|
      if @stamping.update(stamping_params)
        format.html { redirect_to @stamping, notice: "Stamping was successfully updated." }
        format.json { render :show, status: :ok, location: @stamping }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stamping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stampings/1 or /stampings/1.json
  def destroy
    @stamping.destroy
    respond_to do |format|
      format.html { redirect_to stampings_url, notice: "Stamping was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stamping
      @stamping = Stamping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stamping_params
      params.require(:stamping).permit(:start_time, :end_time, :stamping_times, :created_at)
    end
end
