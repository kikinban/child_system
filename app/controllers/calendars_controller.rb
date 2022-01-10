class CalendarsController < ApplicationController
  before_action :set_calendar, only: %i[ show edit update destroy ]

  # GET /calendars or /calendars.json
  def index
    @calendars = Calendar.all
    @calendar = Calendar.new
    @daily_records = DailyRecord.all
  end

  # GET /calendars/1 or /calendars/1.json
  def show
    @calendar = Calendar.find(params[:id])
  end

  # GET /calendars/new
  # newアクションとは新規作成フォームをviewに渡す
  def new
    @calendar = Calendar.new
  end

  # GET /calendars/1/edit
  def edit
    @calendar = Calendar.find(params[:id])
  end

  # POST /calendars or /calendars.json
  # newで入力されたフォームをデータベースに保存する為のアクション
  def create
    @calendar = Calendar.new(calendar_params)

    respond_to do |format|
      if @calendar.save
        format.html { redirect_to @calendar, notice: "Calendar was successfully created." }
        format.json { render :show, status: :created, location: @calendar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendars/1 or /calendars/1.json
  # respond_toメソッド=リクエストで指定されたフォーマットによって処理を分けることが出来る。
  def update
    respond_to do |format|
      if @calendar.update(calendar_params)
        format.html { redirect_to @calendar, notice: "Calendar was successfully updated." }
        format.json { render :show, status: :ok, location: @calendar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendars/1 or /calendars/1.json
  def destroy
    @calendar.destroy
    respond_to do |format|
      format.html { redirect_to calendars_url, notice: "Calendar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar
      @calendar = Calendar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calendar_params
      params.require(:calendar).permit(:content, :title, :start_time)
    end

  #追加
  # private
  # def calendar_params
  #   params.require(:calendar).permit(:content)
  # end
end
