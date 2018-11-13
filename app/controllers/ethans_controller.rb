class EthansController < ApplicationController
  before_action :set_ethan, only: [:show, :edit, :update, :destroy]

  # GET /ethans
  # GET /ethans.json
  def index
    @ethans = Ethan.all
  end

  # GET /ethans/1
  # GET /ethans/1.json
  def show
  end

  # GET /ethans/new
  def new
    @ethan = Ethan.new
  end

  # GET /ethans/1/edit
  def edit
  end

  # POST /ethans
  # POST /ethans.json
  def create
    @ethan = Ethan.new(ethan_params)

    respond_to do |format|
      if @ethan.save
        format.html { redirect_to @ethan, notice: 'Ethan was successfully created.' }
        format.json { render :show, status: :created, location: @ethan }
      else
        format.html { render :new }
        format.json { render json: @ethan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ethans/1
  # PATCH/PUT /ethans/1.json
  def update
    respond_to do |format|
      if @ethan.update(ethan_params)
        format.html { redirect_to @ethan, notice: 'Ethan was successfully updated.' }
        format.json { render :show, status: :ok, location: @ethan }
      else
        format.html { render :edit }
        format.json { render json: @ethan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethans/1
  # DELETE /ethans/1.json
  def destroy
    @ethan.destroy
    respond_to do |format|
      format.html { redirect_to ethans_url, notice: 'Ethan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ethan
      @ethan = Ethan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ethan_params
      params.require(:ethan).permit(:login)
    end
end
