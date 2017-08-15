class LoveThreadsController < ApplicationController
  before_action :set_love_thread, only: [:show, :edit, :update, :destroy]

  # GET /love_threads
  # GET /love_threads.json
  def index
    @love_threads = LoveThread.all
  end

  # GET /love_threads/1
  # GET /love_threads/1.json
  def show
  end

  # GET /love_threads/new
  def new
    @love_thread = LoveThread.new
  end

  # GET /love_threads/1/edit
  def edit
  end

  # POST /love_threads
  # POST /love_threads.json
  def create
    @love_thread = LoveThread.new(love_thread_params)

    respond_to do |format|
      if @love_thread.save
        format.html { redirect_to @love_thread, notice: 'Love thread was successfully created.' }
        format.json { render :show, status: :created, location: @love_thread }
      else
        format.html { render :new }
        format.json { render json: @love_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /love_threads/1
  # PATCH/PUT /love_threads/1.json
  def update
    respond_to do |format|
      if @love_thread.update(love_thread_params)
        format.html { redirect_to @love_thread, notice: 'Love thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @love_thread }
      else
        format.html { render :edit }
        format.json { render json: @love_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /love_threads/1
  # DELETE /love_threads/1.json
  def destroy
    @love_thread.destroy
    respond_to do |format|
      format.html { redirect_to love_threads_url, notice: 'Love thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_love_thread
      @love_thread = LoveThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def love_thread_params
      params.require(:love_thread).permit(:collection_id, :title, :price)
    end
end
