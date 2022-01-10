class ParentsNotesController < ApplicationController
  before_action :set_parents_note, only: %i[ show edit update destroy ]

  # GET /parents_notes or /parents_notes.json
  def index
    @parents_notes = ParentsNote.all
  end

  # GET /parents_notes/1 or /parents_notes/1.json
  def show
  end

  # GET /parents_notes/new
  def new
    @parents_note = ParentsNote.new
  end

  # GET /parents_notes/1/edit
  def edit
  end

  # POST /parents_notes or /parents_notes.json
  def create
    @parents_note = ParentsNote.new(parents_note_params)

    respond_to do |format|
      if @parents_note.save
        format.html { redirect_to @parents_note, notice: "Parents note was successfully created." }
        format.json { render :show, status: :created, location: @parents_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parents_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parents_notes/1 or /parents_notes/1.json
  def update
    respond_to do |format|
      if @parents_note.update(parents_note_params)
        format.html { redirect_to @parents_note, notice: "Parents note was successfully updated." }
        format.json { render :show, status: :ok, location: @parents_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parents_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parents_notes/1 or /parents_notes/1.json
  def destroy
    @parents_note.destroy
    respond_to do |format|
      format.html { redirect_to parents_notes_url, notice: "Parents note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parents_note
      @parents_note = ParentsNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parents_note_params
      params.require(:parents_note).permit(:content)
    end
end
