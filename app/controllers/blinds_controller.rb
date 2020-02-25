class BlindsController < ApplicationController
  before_action :set_blind, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /blinds
  # GET /blinds.json
  def index
    @blinds = Blind.all.order("created_at desc")
  end

  # GET /blinds/1
  # GET /blinds/1.json
  def show
  end

  # GET /blinds/new
  def new
    @blind = current_user.blinds.build
  end

  # GET /blinds/1/edit
  def edit
  end

  # POST /blinds
  # POST /blinds.json
  def create
    @blind = current_user.blinds.build(blind_params)

    respond_to do |format|
      if @blind.save
        format.html { redirect_to @blind, notice: 'Blind was successfully created.' }
        format.json { render :show, status: :created, location: @blind }
      else
        format.html { render :new }
        format.json { render json: @blind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blinds/1
  # PATCH/PUT /blinds/1.json
  def update
    respond_to do |format|
      if @blind.update(blind_params)
        format.html { redirect_to @blind, notice: 'Blind was successfully updated.' }
        format.json { render :show, status: :ok, location: @blind }
      else
        format.html { render :edit }
        format.json { render json: @blind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blinds/1
  # DELETE /blinds/1.json
  def destroy
    @blind.destroy
    respond_to do |format|
      format.html { redirect_to blinds_url, notice: 'Blind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blind
      @blind = Blind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blind_params
      params.require(:blind).permit(:name, :description, :price, :image)
    end
end
