class CustomerJourneysController < ApplicationController
  before_action :set_customer_journey, only: [:show, :edit, :update, :destroy]

  # GET /customer_journeys
  # GET /customer_journeys.json
  def index
    @customer_journeys = CustomerJourney.all
  end

  # GET /customer_journeys/1
  # GET /customer_journeys/1.json
  def show
  end

  # GET /customer_journeys/new
  def new
    @customer_journey = CustomerJourney.new
  end

  # GET /customer_journeys/1/edit
  def edit
  end

  # POST /customer_journeys
  # POST /customer_journeys.json
  def create
    @customer_journey = CustomerJourney.new(customer_journey_params)

    respond_to do |format|
      if @customer_journey.save
        format.html { redirect_to @customer_journey, notice: 'Customer journey was successfully created.' }
        format.json { render :show, status: :created, location: @customer_journey }
      else
        format.html { render :new }
        format.json { render json: @customer_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_journeys/1
  # PATCH/PUT /customer_journeys/1.json
  def update
    respond_to do |format|
      if @customer_journey.update(customer_journey_params)
        format.html { redirect_to @customer_journey, notice: 'Customer journey was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_journey }
      else
        format.html { render :edit }
        format.json { render json: @customer_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_journeys/1
  # DELETE /customer_journeys/1.json
  def destroy
    @customer_journey.destroy
    respond_to do |format|
      format.html { redirect_to customer_journeys_url, notice: 'Customer journey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_journey
      @customer_journey = CustomerJourney.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_journey_params
      params.require(:customer_journey).permit(:name, :description, :user_id)
    end
end
