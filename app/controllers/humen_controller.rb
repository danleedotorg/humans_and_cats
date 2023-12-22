class HumenController < ApplicationController
  before_action :set_human, only: %i[ show edit update destroy ]

  # GET /humen or /humen.json
  def index
    @humen = Human.all
  end

  # GET /humen/1 or /humen/1.json
  def show
  end

  # GET /humen/new
  def new
    @human = Human.new
  end

  # GET /humen/1/edit
  def edit
  end

  # POST /humen or /humen.json
  def create
    @human = Human.new(human_params)

    respond_to do |format|
      if @human.save
        format.html { redirect_to human_url(@human), notice: "Human was successfully created." }
        format.json { render :show, status: :created, location: @human }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @human.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /humen/1 or /humen/1.json
  def update
    respond_to do |format|
      if @human.update(human_params)
        format.html { redirect_to human_url(@human), notice: "Human was successfully updated." }
        format.json { render :show, status: :ok, location: @human }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @human.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humen/1 or /humen/1.json
  def destroy
    @human.destroy!

    respond_to do |format|
      format.html { redirect_to humen_url, notice: "Human was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_human
      @human = Human.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def human_params
      params.require(:human).permit(:name, :age, :gender)
    end
end
