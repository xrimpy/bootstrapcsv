class YosController < ApplicationController
  before_action :set_yo, only: [:show, :edit, :update, :destroy]

  # GET /yos
  # GET /yos.json
  def index
    @yos = Yo.all
  end

  # GET /yos/1
  # GET /yos/1.json
  def show
  end

  # GET /yos/new
  def new
    @yo = Yo.new
  end

  # GET /yos/1/edit
  def edit
  end

  # POST /yos
  # POST /yos.json
  def create
    @yo = Yo.new(yo_params)

    respond_to do |format|
      if @yo.save
        format.html { redirect_to @yo, notice: 'Yo was successfully created.' }
        format.json { render :show, status: :created, location: @yo }
      else
        format.html { render :new }
        format.json { render json: @yo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yos/1
  # PATCH/PUT /yos/1.json
  def update
    respond_to do |format|
      if @yo.update(yo_params)
        format.html { redirect_to @yo, notice: 'Yo was successfully updated.' }
        format.json { render :show, status: :ok, location: @yo }
      else
        format.html { render :edit }
        format.json { render json: @yo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yos/1
  # DELETE /yos/1.json
  def destroy
    @yo.destroy
    respond_to do |format|
      format.html { redirect_to yos_url, notice: 'Yo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yo
      @yo = Yo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yo_params
      params.require(:yo).permit(:title)
    end
end
