class CouncillorsController < ApplicationController
  before_action :set_councillor, only: %i[ show edit update destroy ]

  # GET /councillors or /councillors.json
  def index
    @councillors = Councillor.all
  end

  # GET /councillors/1 or /councillors/1.json
  def show
  end

  # GET /councillors/new
  def new
    @councillor = Councillor.new
  end

  # GET /councillors/1/edit
  def edit
  end

  # POST /councillors or /councillors.json
  def create
    @councillor = Councillor.new(councillor_params)

    respond_to do |format|
      if @councillor.save
        format.html { redirect_to @councillor, notice: "Successfully created." }
        format.json { render :show, status: :created, location: @councillor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @councillor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /councillors/1 or /councillors/1.json
  def update
    respond_to do |format|
      if @councillor.update(councillor_params)
        format.html { redirect_to @councillor, notice: "Successfully updated." }
        format.json { render :show, status: :ok, location: @councillor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @councillor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /councillors/1 or /councillors/1.json
  def destroy
    @councillor.destroy
    respond_to do |format|
      format.html { redirect_to councillors_url, notice: "Data Erased" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_councillor
      @councillor = Councillor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def councillor_params
      params.require(:councillor).permit(:lga, :ward, :pollingunit, :total_votes, :valid_votes, :invalid_votes, :apc, :apga, :apm, :nnpp, :pdp, :prp, :user_id)
    end
end
