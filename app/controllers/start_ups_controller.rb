class StartUpsController < ApplicationController
  before_action :set_start_up, only: [:show, :edit, :update, :destroy]

  # GET /start_ups
  # GET /start_ups.json
  def index
    @start_ups = StartUp.all
  end

  # GET /start_ups/1
  # GET /start_ups/1.json
  def show
    if @start_up.stage_id == 5
      @mobile_graphic_url = "http://res.cloudinary.com/small-change/image/upload/v1462195241/idea_mobile_eil6uj.png"
      @graphic_large_url = "http://res.cloudinary.com/small-change/image/upload/v1461927711/idea_s2xbdp.png"
    elsif @start_up.stage_id == 6
      @mobile_graphic_url = "http://res.cloudinary.com/small-change/image/upload/v1462195255/mvp_mobile_ppss9q.png"
      @graphic_large_url = "http://res.cloudinary.com/small-change/image/upload/v1461927729/mvp_ippmsx.png"
    elsif @start_up.stage_id == 7
      @mobile_graphic_url = "http://res.cloudinary.com/small-change/image/upload/v1462195266/pm_fit_mobile_vgcmqu.png"
      @graphic_large_url = "http://res.cloudinary.com/small-change/image/upload/v1461927741/pm_fit_os4fuo.png"
    elsif @start_up.stage_id === 8
      @mobile_graphic_url = "http://res.cloudinary.com/small-change/image/upload/v1462195277/growth_mobile_hrmqcz.png"
      @graphic_large_url = "http://res.cloudinary.com/small-change/image/upload/v1461927755/growth_vycutm.png"
    end
  end

  # GET /start_ups/new
  def new
    @start_up = StartUp.new
  end

  # GET /start_ups/1/edit
  def edit
  end

  # POST /start_ups
  # POST /start_ups.json
  def create
    @start_up = StartUp.new(start_up_params)

    respond_to do |format|
      if @start_up.save
        format.html { redirect_to @start_up, notice: 'Start up was successfully created.' }
        format.json { render :show, status: :created, location: @start_up }
      else
        format.html { render :new }
        format.json { render json: @start_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_ups/1
  # PATCH/PUT /start_ups/1.json
  def update
    respond_to do |format|
      if @start_up.update(start_up_params)
        format.html { redirect_to @start_up, notice: 'Start up was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_up }
      else
        format.html { render :edit }
        format.json { render json: @start_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_ups/1
  # DELETE /start_ups/1.json
  def destroy
    @start_up.destroy
    respond_to do |format|
      format.html { redirect_to start_ups_url, notice: 'Start up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_up
      @start_up = StartUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_up_params
      params.require(:start_up).permit(:name, :short_description, :long_description, :image, :video, :stage_id, :incubator_id, :location_id, :user_id)
    end
end
