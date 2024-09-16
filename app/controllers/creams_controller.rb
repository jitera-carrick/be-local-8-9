class CreamsController < ApplicationController
  before_action :set_cream, only: %i[ show edit update destroy ]

  # GET /creams or /creams.json
  def index
    @creams = Cream.all
  end

  # GET /creams/1 or /creams/1.json
  def show
  end

  # GET /creams/new
  def new
    @cream = Cream.new
  end

  # GET /creams/1/edit
  def edit
  end

  # POST /creams or /creams.json
  def create
    @cream = Cream.new(cream_params)

    respond_to do |format|
      if @cream.save
        format.html { redirect_to cream_url(@cream), notice: "Cream was successfully created." }
        format.json { render :show, status: :created, location: @cream }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creams/1 or /creams/1.json
  def update
    respond_to do |format|
      if @cream.update(cream_params)
        format.html { redirect_to cream_url(@cream), notice: "Cream was successfully updated." }
        format.json { render :show, status: :ok, location: @cream }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creams/1 or /creams/1.json
  def destroy
    @cream.destroy

    respond_to do |format|
      format.html { redirect_to creams_url, notice: "Cream was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cream
      @cream = Cream.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cream_params
      params.require(:cream).permit(:name, :description, :price)
    end
end
