class HellowsController < ApplicationController
  before_action :set_hellow, only: [:show, :edit, :update, :destroy]

  # GET /hellows
  # GET /hellows.json
  def index
    @hellows = Hellow.all
  end

  # GET /hellows/1
  # GET /hellows/1.json
  def show
  end

  # GET /hellows/new
  def new
    @hellow = Hellow.new
  end

  # GET /hellows/1/edit
  def edit
  end

  # POST /hellows
  # POST /hellows.json
  def create
    @hellow = Hellow.new(hellow_params)

    respond_to do |format|
      if @hellow.save
        format.html { redirect_to @hellow, notice: 'Hellow was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hellow }
      else
        format.html { render action: 'new' }
        format.json { render json: @hellow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hellows/1
  # PATCH/PUT /hellows/1.json
  def update
    respond_to do |format|
      if @hellow.update(hellow_params)
        format.html { redirect_to @hellow, notice: 'Hellow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hellow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hellows/1
  # DELETE /hellows/1.json
  def destroy
    @hellow.destroy
    respond_to do |format|
      format.html { redirect_to hellows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hellow
      @hellow = Hellow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hellow_params
      params.require(:hellow).permit(:name, :start_at, :end_at, :memo, :category)
    end
end
