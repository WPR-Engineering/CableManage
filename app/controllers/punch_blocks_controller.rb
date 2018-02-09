class PunchBlocksController < ApplicationController
  before_action :set_punch_block, only: [:show, :edit, :update, :destroy]

  # GET /punch_blocks
  # GET /punch_blocks.json
  def index
    @punch_blocks = PunchBlock.all
  end

  # GET /punch_blocks/1
  # GET /punch_blocks/1.json
  def show
    @terminals = Terminal.where(punch_block_id: params[:id])
  end

  # GET /punch_blocks/new
  def new
    @punch_block = PunchBlock.new
  end

  # GET /punch_blocks/1/edit
  def edit
  end

  # POST /punch_blocks
  # POST /punch_blocks.json
  def create
    @punch_block = PunchBlock.new(punch_block_params)

    respond_to do |format|
      if @punch_block.save
        format.html { redirect_to @punch_block, notice: 'Punch block was successfully created.' }
        format.json { render :show, status: :created, location: @punch_block }
      else
        format.html { render :new }
        format.json { render json: @punch_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punch_blocks/1
  # PATCH/PUT /punch_blocks/1.json
  def update
    respond_to do |format|
      if @punch_block.update(punch_block_params)
        format.html { redirect_to @punch_block, notice: 'Punch block was successfully updated.' }
        format.json { render :show, status: :ok, location: @punch_block }
      else
        format.html { render :edit }
        format.json { render json: @punch_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punch_blocks/1
  # DELETE /punch_blocks/1.json
  def destroy
    @punch_block.destroy
    respond_to do |format|
      format.html { redirect_to punch_blocks_url, notice: 'Punch block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punch_block
      @punch_block = PunchBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punch_block_params
      params.require(:punch_block).permit(:block_number, :block_type, :block, :description, :block_location)
    end
end
