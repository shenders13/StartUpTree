class IncubatorsController < ApplicationController
  before_action :set_incubator, only: [:show, :edit, :update, :destroy]

  # GET /incubators
  # GET /incubators.json
  def index
    @incubators = Incubator.all
  end

  # GET /incubators/1
  # GET /incubators/1.json
  def show
  end

  # GET /incubators/new
  def new
    @incubator = Incubator.new
  end

  # GET /incubators/1/edit
  def edit
  end

  # POST /incubators
  # POST /incubators.json
  def create
    @incubator = Incubator.new(incubator_params)

    respond_to do |format|
      if @incubator.save
        format.html { redirect_to @incubator, notice: 'Incubator was successfully created.' }
        format.json { render :show, status: :created, location: @incubator }
      else
        format.html { render :new }
        format.json { render json: @incubator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incubators/1
  # PATCH/PUT /incubators/1.json
  def update
    respond_to do |format|
      if @incubator.update(incubator_params)
        format.html { redirect_to @incubator, notice: 'Incubator was successfully updated.' }
        format.json { render :show, status: :ok, location: @incubator }
      else
        format.html { render :edit }
        format.json { render json: @incubator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incubators/1
  # DELETE /incubators/1.json
  def destroy
    @incubator.destroy
    respond_to do |format|
      format.html { redirect_to incubators_url, notice: 'Incubator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incubator
      @incubator = Incubator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incubator_params
      params.require(:incubator).permit(:name)
    end
end
