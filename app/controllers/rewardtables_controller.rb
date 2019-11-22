class RewardtablesController < ApplicationController
  before_action :set_rewardtable, only: [:show, :edit, :update, :destroy]

  # GET /rewardtables
  # GET /rewardtables.json
  def index
    @rewardtables = Rewardtable.all
  end

  # GET /rewardtables/1
  # GET /rewardtables/1.json
  def show
  end

  # GET /rewardtables/new
  def new
    @rewardtable = Rewardtable.new
  end

  # GET /rewardtables/1/edit
  def edit
  end

  # POST /rewardtables
  # POST /rewardtables.json
  def create
    @rewardtable = Rewardtable.new(rewardtable_params)

    respond_to do |format|
      if @rewardtable.save
        format.html { redirect_to @rewardtable, notice: 'Rewardtable was successfully created.' }
        format.json { render :show, status: :created, location: @rewardtable }
      else
        format.html { render :new }
        format.json { render json: @rewardtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rewardtables/1
  # PATCH/PUT /rewardtables/1.json
  def update
    respond_to do |format|
      if @rewardtable.update(rewardtable_params)
        format.html { redirect_to @rewardtable, notice: 'Rewardtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @rewardtable }
      else
        format.html { render :edit }
        format.json { render json: @rewardtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rewardtables/1
  # DELETE /rewardtables/1.json
  def destroy
    @rewardtable.destroy
    respond_to do |format|
      format.html { redirect_to rewardtables_url, notice: 'Rewardtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rewardtable
      @rewardtable = Rewardtable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rewardtable_params
      params.require(:rewardtable).permit(:rewardtype, :pts)
    end
end
