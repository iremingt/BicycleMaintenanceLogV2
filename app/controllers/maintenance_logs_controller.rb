class MaintenanceLogsController < ApplicationController
  before_action :set_maintenance_log, only: %i[ show edit update destroy ]

  # GET /maintenance_logs or /maintenance_logs.json
  def index
    @maintenance_logs = MaintenanceLog.all
  end

  # GET /maintenance_logs/1 or /maintenance_logs/1.json
  def show
  end

  # GET /maintenance_logs/new
  def new
    @maintenance_log = MaintenanceLog.new
  end

  # GET /maintenance_logs/1/edit
  def edit
  end

  # POST /maintenance_logs or /maintenance_logs.json
  def create
    @maintenance_log = MaintenanceLog.new(maintenance_log_params)

    respond_to do |format|
      if @maintenance_log.save
        format.html { redirect_to maintenance_log_url(@maintenance_log), notice: "Maintenance log was successfully created." }
        format.json { render :show, status: :created, location: @maintenance_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maintenance_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance_logs/1 or /maintenance_logs/1.json
  def update
    respond_to do |format|
      if @maintenance_log.update(maintenance_log_params)
        format.html { redirect_to maintenance_log_url(@maintenance_log), notice: "Maintenance log was successfully updated." }
        format.json { render :show, status: :ok, location: @maintenance_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maintenance_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_logs/1 or /maintenance_logs/1.json
  def destroy
    @maintenance_log.destroy

    respond_to do |format|
      format.html { redirect_to maintenance_logs_url, notice: "Maintenance log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance_log
      @maintenance_log = MaintenanceLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maintenance_log_params
      params.require(:maintenance_log).permit(:title, :description, :date, :hoursUntilService)
    end
end
