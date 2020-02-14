class CurtainsController < ApplicationController
  before_action :set_curtain, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /curtains
  # GET /curtains.json
  def index
    @curtains = Curtain.all.order("created_at desc")
  end

  # GET /curtains/1
  # GET /curtains/1.json
  def show
  end

  # GET /curtains/new
  def new
    @curtain = current_user.curtains.build
  end

  # GET /curtains/1/edit
  def edit
  end

  # POST /curtains
  # POST /curtains.json
  def create
    @curtain = current_user.curtains.build(curtain_params)

    respond_to do |format|
      if @curtain.save
        format.html { redirect_to @curtain, notice: 'Curtain was successfully created.' }
        format.json { render :show, status: :created, location: @curtain }
      else
        format.html { render :new }
        format.json { render json: @curtain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curtains/1
  # PATCH/PUT /curtains/1.json
  def update
    respond_to do |format|
      if @curtain.update(curtain_params)
        format.html { redirect_to @curtain, notice: 'Curtain was successfully updated.' }
        format.json { render :show, status: :ok, location: @curtain }
      else
        format.html { render :edit }
        format.json { render json: @curtain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curtains/1
  # DELETE /curtains/1.json
  def destroy
    @curtain.destroy
    respond_to do |format|
      format.html { redirect_to curtains_url, notice: 'Curtain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curtain
      @curtain = Curtain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curtain_params
      params.require(:curtain).permit(:name, :description, :price, :image)
    end
end
