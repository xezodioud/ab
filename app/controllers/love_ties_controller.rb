class LoveTiesController < ApplicationController
  before_action :set_love_ty, only: [:show, :edit, :update, :destroy]

  # GET /love_ties
  # GET /love_ties.json
  def index
    @love_ties = LoveTy.all
  end

  # GET /love_ties/1
  # GET /love_ties/1.json
  def show
  end

  # GET /love_ties/new
  def new
    @love_ty = LoveTy.new
  end

  # GET /love_ties/1/edit
  def edit
  end

  # POST /love_ties
  # POST /love_ties.json
  def create
    @love_ty = LoveTy.new(love_ty_params)

    respond_to do |format|
      if @love_ty.save
        format.html { redirect_to @love_ty, notice: 'Love ty was successfully created.' }
        format.json { render :show, status: :created, location: @love_ty }
      else
        format.html { render :new }
        format.json { render json: @love_ty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /love_ties/1
  # PATCH/PUT /love_ties/1.json
  def update
    respond_to do |format|
      if @love_ty.update(love_ty_params)
        format.html { redirect_to @love_ty, notice: 'Love ty was successfully updated.' }
        format.json { render :show, status: :ok, location: @love_ty }
      else
        format.html { render :edit }
        format.json { render json: @love_ty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /love_ties/1
  # DELETE /love_ties/1.json
  def destroy
    @love_ty.destroy
    respond_to do |format|
      format.html { redirect_to love_ties_url, notice: 'Love ty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_love_ty
      @love_ty = LoveTy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def love_ty_params
      params.require(:love_ty).permit(:collection_id, :title, :price)
    end
end
