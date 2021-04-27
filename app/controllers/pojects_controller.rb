class PojectsController < ApplicationController
  before_action :set_poject, only: %i[ show edit update destroy ]

  # GET /pojects or /pojects.json
  def index
    @pojects = Poject.all
  end

  # GET /pojects/1 or /pojects/1.json
  def show
  end

  # GET /pojects/new
  def new
    @poject = Poject.new
  end

  # GET /pojects/1/edit
  def edit
  end

  # POST /pojects or /pojects.json
  def create
    @poject = Poject.new(poject_params)

    respond_to do |format|
      if @poject.save
        format.html { redirect_to @poject, notice: "Poject was successfully created." }
        format.json { render :show, status: :created, location: @poject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pojects/1 or /pojects/1.json
  def update
    respond_to do |format|
      if @poject.update(poject_params)
        format.html { redirect_to @poject, notice: "Poject was successfully updated." }
        format.json { render :show, status: :ok, location: @poject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pojects/1 or /pojects/1.json
  def destroy
    @poject.destroy
    respond_to do |format|
      format.html { redirect_to pojects_url, notice: "Poject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poject
      @poject = Poject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poject_params
      params.require(:poject).permit(:title, :description)
    end
end
