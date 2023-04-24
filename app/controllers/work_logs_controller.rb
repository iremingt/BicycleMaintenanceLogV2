class WorkLogsController < ApplicationController
  before_action :set_work_log, only: %i[ show edit update destroy ]

  # GET /work_logs or /work_logs.json
  def index
    @work_logs = WorkLog.all
  end

  # GET /work_logs/1 or /work_logs/1.json
  def show
  end

  # GET /work_logs/new
  def new
    @work_log = WorkLog.new
  end

  # GET /work_logs/1/edit
  def edit
  end

  # POST /work_logs or /work_logs.json
  def create
    @work_log = WorkLog.new(work_log_params)

    respond_to do |format|
      if @work_log.save
        format.html { redirect_to work_log_url(@work_log), notice: "Work log was successfully created." }
        format.json { render :show, status: :created, location: @work_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_logs/1 or /work_logs/1.json
  def update
    respond_to do |format|
      if @work_log.update(work_log_params)
        format.html { redirect_to work_log_url(@work_log), notice: "Work log was successfully updated." }
        format.json { render :show, status: :ok, location: @work_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_logs/1 or /work_logs/1.json
  def destroy
    @work_log.destroy

    respond_to do |format|
      format.html { redirect_to work_logs_url, notice: "Work log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_log
      @work_log = WorkLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_log_params
      params.require(:work_log).permit(:title, :description, :date, :hoursUntilServiceDue)
    end
end
