class TimeSlotsListsController < ApplicationController
  before_action :set_time_slots_list, only: [:show, :edit, :update, :destroy]

  # GET /time_slots_lists
  # GET /time_slots_lists.json
  def index
    @time_slots_lists = TimeSlotsList.all
  end

  # GET /time_slots_lists/1
  # GET /time_slots_lists/1.json
  def show
  end

  # GET /time_slots_lists/new
  def new
    @time_slots_list = TimeSlotsList.new
  end

  # GET /time_slots_lists/1/edit
  def edit
  end

  # POST /time_slots_lists
  # POST /time_slots_lists.json
  def create
    @time_slots_list = TimeSlotsList.new(time_slots_list_params)

    respond_to do |format|
      if @time_slots_list.save
        format.html { redirect_to @time_slots_list, notice: 'Time slots list was successfully created.' }
        format.json { render :show, status: :created, location: @time_slots_list }
        format.js
      else
        format.html { render :new }
        format.json { render json: @time_slots_list.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /time_slots_lists/1
  # PATCH/PUT /time_slots_lists/1.json
  def update
    respond_to do |format|
      if @time_slots_list.update(time_slots_list_params)
        format.html { redirect_to @time_slots_list, notice: 'Time slots list was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_slots_list }
      else
        format.html { render :edit }
        format.json { render json: @time_slots_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_slots_lists/1
  # DELETE /time_slots_lists/1.json
  def destroy
    @time_slots_list.destroy
    respond_to do |format|
      format.html { redirect_to time_slots_lists_url, notice: 'Time slots list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_slots_list
      @time_slots_list = TimeSlotsList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_slots_list_params
      params.require(:time_slots_list).permit(:start_date, :end_date, :duration)
    end
end
