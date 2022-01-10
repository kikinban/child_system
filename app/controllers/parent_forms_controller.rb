class ParentFormsController < ApplicationController
  before_action :set_parent_form, only: %i[ show edit update destroy ]

  # GET /parent_forms or /parent_forms.json
  def index
    @parent_forms = ParentForm.all
  end

  # GET /parent_forms/1 or /parent_forms/1.json
  def show
  end

  # GET /parent_forms/new
  def new
    @parent_form = ParentForm.new
  end

  # GET /parent_forms/1/edit
  def edit
  end

  # POST /parent_forms or /parent_forms.json
  def create
    @parent_form = ParentForm.new(parent_form_params)

    respond_to do |format|
      if @parent_form.save
        format.html { redirect_to @parent_form, notice: "Parent form was successfully created." }
        format.json { render :show, status: :created, location: @parent_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parent_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_forms/1 or /parent_forms/1.json
  def update
    respond_to do |format|
      if @parent_form.update(parent_form_params)
        format.html { redirect_to @parent_form, notice: "Parent form was successfully updated." }
        format.json { render :show, status: :ok, location: @parent_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parent_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_forms/1 or /parent_forms/1.json
  def destroy
    @parent_form.destroy
    respond_to do |format|
      format.html { redirect_to parent_forms_url, notice: "Parent form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_form
      @parent_form = ParentForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parent_form_params
      params.require(:parent_form).permit(:children_name, :parent_name, :content_name, :contents)
    end
end
