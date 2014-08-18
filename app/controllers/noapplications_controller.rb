require "userprofiles_controller"
class NoapplicationsController < ApplicationController
  before_action :set_noapplication, only: [:show, :edit, :update, :destroy]

  # GET /noapplications
  # GET /noapplications.json
  def index
    @noapplications = Noapplication.all
  end

  # GET /noapplications/1
  # GET /noapplications/1.json
  def show
  end

  # GET /noapplications/new
  def new
    @noapplication = Noapplication.new
  end

  # GET /noapplications/1/edit
  def edit
  end

  # POST /noapplications
  # POST /noapplications.json
  def create
    @noapplication = Noapplication.new(noapplication_params)

    respond_to do |format|
      if @noapplication.save
        format.html { redirect_to @noapplication, notice: 'Noapplication was successfully created.' }
        format.json { render :show, status: :created, location: @noapplication }
      else
        format.html { render :new }
        format.json { render json: @noapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noapplications/1
  # PATCH/PUT /noapplications/1.json
  def update
    respond_to do |format|
      if @noapplication.update(noapplication_params)
        format.html { redirect_to @noapplication, notice: 'Noapplication was successfully updated.' }
        format.json { render :show, status: :ok, location: @noapplication }
      else
        format.html { render :edit }
        format.json { render json: @noapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noapplications/1
  # DELETE /noapplications/1.json
  def destroy
    @noapplication.destroy
    respond_to do |format|
      format.html { redirect_to noapplications_url, notice: 'Noapplication was successfully destroyed.' }
      format.json { head :no_content }
    
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noapplication
      @noapplication = Noapplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noapplication_params
      params.require(:noapplication).permit(:no_of_application, :path)
    end
end
