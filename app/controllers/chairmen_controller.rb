class ChairmenController < ApplicationController
  before_action :set_chairman, only: %i[ show edit update destroy ]

  # GET /chairmen or /chairmen.json
  def index
    @chairmen = Chairman.all
  end

  # GET /chairmen/1 or /chairmen/1.json
  def show
  end

  # GET /chairmen/new
  def new
    @chairman = Chairman.new
  end

  # GET /chairmen/1/edit
  def edit
  end

  # POST /chairmen or /chairmen.json
  def create
    @chairman = Chairman.new(chairman_params)

    respond_to do |format|
      if @chairman.save
        format.html { redirect_to @chairman, notice: "Chairman was successfully created." }
        format.json { render :show, status: :created, location: @chairman }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chairman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chairmen/1 or /chairmen/1.json
  def update
    respond_to do |format|
      if @chairman.update(chairman_params)
        format.html { redirect_to @chairman, notice: "Chairman was successfully updated." }
        format.json { render :show, status: :ok, location: @chairman }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chairman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chairmen/1 or /chairmen/1.json
  def destroy
    @chairman.destroy
    respond_to do |format|
      format.html { redirect_to chairmen_url, notice: "Chairman was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chairman
      @chairman = Chairman.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chairman_params
      params.require(:chairman).permit(:lga, :ward, :pollingunit, :total_votes, :valid_votes, :invalid_votes, :apc, :apga, :apm, :nnpp, :pdp, :prp, :user_id)
    end
end
