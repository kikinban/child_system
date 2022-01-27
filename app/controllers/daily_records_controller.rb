class DailyRecordsController < ApplicationController
  before_action :set_daily_record, only: %i[ show edit update destroy ]

  # GET /daily_records or /daily_records.json
  def index
    @daily_records = DailyRecord.all
    @parents_notes = ParentsNote.all
  end

  # GET /daily_records/1 or /daily_records/1.json
  def show
    @parents_notes = ParentsNote.last
    @daily_records = DailyRecord.last
  end

  # GET /daily_records/new
  def new
    @daily_record = DailyRecord.new
  end

  # GET /daily_records/1/edit
  def edit
  end

  # POST /daily_records or /daily_records.json
  def create
    @daily_record = DailyRecord.new(daily_record_params)

    respond_to do |format|
      if @daily_record.save
        format.html { redirect_to @daily_record, notice: "Daily record was successfully created." }
        # format.json { render :show, status: :created, location: @daily_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_records/1 or /daily_records/1.json
  def update
    respond_to do |format|
      if @daily_record.update(daily_record_params)
        format.html { redirect_to @daily_record, notice: "Daily record was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_records/1 or /daily_records/1.json
  def destroy
    @daily_record.destroy
    respond_to do |format|
      format.html { redirect_to daily_records_url, notice: "Daily record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_record
      @daily_record = DailyRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_record_params
      params.require(:daily_record).permit(:activities, :states, :information,:note_temperature,
      :note_condition,:note_snot,:note_cough,:note_slight_fever,:note_heat,:note_diarrhea,
      :note_vomiting,:note_anorexia,:note_cold,:note_condition_text,:note_defecation,:note_stool_yes,
      :note_stool_number,:note_injury,:note_morning_snack,:note_morning_snack,:note_morning_remaining_contents,
      :note_noon,:note_noon_remaining_contents,:note_noon_snack,:note_noon_snack_remaining_contents)
    end
end
