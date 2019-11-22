class IdtablesController < ApplicationController
  before_action :set_idtable, only: [:show, :edit, :update, :destroy]

  # GET /idtables
  # GET /idtables.json
  def index
    @idtables = Idtable.all
  end

  # GET /idtables/1
  # GET /idtables/1.json
  def show
  end

  # GET /idtables/new
  def new
    @idtable = Idtable.new
  end

  # GET /idtables/1/edit
  def edit
  end

  # POST /idtables
  # POST /idtables.json
  def create
    @idtable = Idtable.new(idtable_params)

    respond_to do |format|
      if @idtable.save
        format.html { redirect_to @idtable, notice: 'Idtable was successfully created.' }
        format.json { render :show, status: :created, location: @idtable }
      else
        format.html { render :new }
        format.json { render json: @idtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idtables/1
  # PATCH/PUT /idtables/1.json
  def update
    respond_to do |format|
      if @idtable.update(idtable_params)
        format.html { redirect_to @idtable, notice: 'Idtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @idtable }
      else
        format.html { render :edit }
        format.json { render json: @idtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idtables/1
  # DELETE /idtables/1.json
  def destroy
    @idtable.destroy
    respond_to do |format|
      format.html { redirect_to idtables_url, notice: 'Idtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idtable
      @idtable = Idtable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idtable_params
      params.require(:idtable).permit(:idtype, :minbal)
    end
end
