class SimplesController < ApplicationController
  before_action :set_simple, only: %i[ show edit update destroy ]

  # GET /simples or /simples.json
  def index
    @simples = Simple.all
  end

  # GET /simples/1 or /simples/1.json
  def show
  end

  # GET /simples/new
  def new
    @simple = Simple.new
  end

  # GET /simples/1/edit
  def edit
  end

  # POST /simples or /simples.json
  def create
    @simple = Simple.new(simple_params)

    respond_to do |format|
      if @simple.save
        format.html { redirect_to simple_url(@simple), notice: "Simple was successfully created." }
        format.json { render :show, status: :created, location: @simple }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @simple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simples/1 or /simples/1.json
  def update
    respond_to do |format|
      if @simple.update(simple_params)
        format.html { redirect_to simple_url(@simple), notice: "Simple was successfully updated." }
        format.json { render :show, status: :ok, location: @simple }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @simple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simples/1 or /simples/1.json
  def destroy
    @simple.destroy

    respond_to do |format|
      format.html { redirect_to simples_url, notice: "Simple was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple
      @simple = Simple.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def simple_params
      params.require(:simple).permit(:name, :description, :price)
    end
end
