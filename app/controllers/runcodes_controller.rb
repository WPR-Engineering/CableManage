class RuncodesController < ApplicationController
  before_action :set_runcode, only: [:show, :edit, :update, :destroy]

  # GET /runcodes
  # GET /runcodes.json
  def index
    @runcodes = Runcode.all
    @terminals = Terminal.all
    @ports = Port.all
    @wires = Wire.all
    @devices = Device.all
    @punch_block =PunchBlock.all
    logger.debug "YOUVE LOADED A PAGE!"
    end

  # GET /runcodes/1
  # GET /runcodes/1.json
  def show
    @terminals = Terminal.all
    @ports = Port.all
    @wires = Wire.all
    @devices = Device.all
    @punch_block = PunchBlock.all
  end

  # GET /runcodes/new
  def new
    @runcode = Runcode.new
    @terminals = Terminal.all
    @ports = Port.all
    @wires = Wire.all
    @devices = Device.all
    @punch_block =PunchBlock.all
  end

  # GET /runcodes/1/edit
  def edit
    @terminals = Terminal.all
    @ports = Port.all
    @wires = Wire.all
    @devices = Device.all
    @punch_block =PunchBlock.all
  end

  # POST /runcodes
  # POST /runcodes.json
  def create
    @runcode = Runcode.new(runcode_params)
    @terminals = Terminal.all
    @ports = Port.all
    @wires = Wire.all
    @devices = Device.all
    @punch_block =PunchBlock.all
    logger.debug "Creating runcode!"


    respond_to do |format|
      if @runcode.save
        format.html { redirect_to @runcode, notice: 'Runcode was successfully created.' }
        format.json { render :show, status: :created, location: @runcode }
      else
        format.html { render :new }
        format.json { render json: @runcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runcodes/1
  # PATCH/PUT /runcodes/1.json
  def update
    respond_to do |format|
      if @runcode.update(runcode_params)
        format.html { redirect_to @runcode, notice: 'Runcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @runcode }
      else
        format.html { render :edit }
        format.json { render json: @runcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runcodes/1
  # DELETE /runcodes/1.json
  def destroy
    @runcode.destroy
    respond_to do |format|
      format.html { redirect_to runcodes_url, notice: 'Runcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runcode
      @runcode = Runcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runcode_params
      params.require(:runcode).permit(:runcode, :description, :wire, :terminal, :port, :punch_block, :wire_number, :device, :port_id)
    end
end
