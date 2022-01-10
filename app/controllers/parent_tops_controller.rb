class ParentTopsController < ApplicationController
  before_action :set_parent_top, only: %i[ show edit update destroy ]

  # GET /parent_tops or /parent_tops.json
  def index
    @parent_tops = ParentTop.all

  end

  # GET /parent_tops/1 or /parent_tops/1.json
  def show
  end

  # GET /parent_tops/new
  def new
    @parent_top = ParentTop.new
  end

  # GET /parent_tops/1/edit
  def edit
  end

  # POST /parent_tops or /parent_tops.json
  def create
    @parent_top = ParentTop.new(parent_top_params)

    respond_to do |format|
      if @parent_top.save
        format.html { redirect_to @parent_top, notice: "Parent top was successfully created." }
        format.json { render :show, status: :created, location: @parent_top }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parent_top.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_tops/1 or /parent_tops/1.json
  def update
    respond_to do |format|
      if @parent_top.update(parent_top_params)
        format.html { redirect_to @parent_top, notice: "Parent top was successfully updated." }
        format.json { render :show, status: :ok, location: @parent_top }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parent_top.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_tops/1 or /parent_tops/1.json
  def destroy
    @parent_top.destroy
    respond_to do |format|
      format.html { redirect_to parent_tops_url, notice: "Parent top was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_top
      @parent_top = ParentTop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parent_top_params
      params.fetch(:parent_top, {})
    end

end
