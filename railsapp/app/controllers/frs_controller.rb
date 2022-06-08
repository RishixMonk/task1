class FrsController < ApplicationController
  before_action :set_fr, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /frs or /frs.json
  def index
    @frs = Fr.all
  end

  # GET /frs/1 or /frs/1.json
  def show
  end

  # GET /frs/new
  def new
    @fr = current_user.frs.build
  end

  # GET /frs/1/edit
  def edit
  end

  # POST /frs or /frs.json
  def create
    @fr = current_user.frs.build(fr_params)

    respond_to do |format|
      if @fr.save
        format.html { redirect_to fr_url(@fr), notice: "Fr was successfully created." }
        format.json { render :show, status: :created, location: @fr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frs/1 or /frs/1.json
  def update
    respond_to do |format|
      if @fr.update(fr_params)
        format.html { redirect_to fr_url(@fr), notice: "Fr was successfully updated." }
        format.json { render :show, status: :ok, location: @fr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frs/1 or /frs/1.json
  def destroy
    @fr.destroy

    respond_to do |format|
      format.html { redirect_to frs_url, notice: "Fr was successfully destroyed." }
      format.json { head :no_content }
    end
  end
def correct_user
    @fr= current_user.frs.find_by(id: params[:id])
    redirect_to frs_path, notice: "Not Authorized To Edit This Friend" if @fr.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fr
      @fr = Fr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fr_params
      params.require(:fr).permit(:first_name, :last_name, :email, :phone, :insta_id, :user_id)
    end
end
