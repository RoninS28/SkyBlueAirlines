class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  # GET /flights or /flights.json
 def index
    if @current_user.email == 'admin@skyblue.com' #to see if the current user is the admin
      @flights = Flight.all
    else
      @flights = Flight.all
      if !(@current_user.orig.nil? || @current_user.orig == '' )
        @flights = @flights.filter_by_originCity(@current_user.orig.upcase)
      end
      if !(@current_user.dest.nil? || @current_user.dest == '' )
        @flights = @flights.filter_by_destinationCity(@current_user.dest.upcase)
      end
      end


  end
  

  # GET /flights/1 or /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    if @current_user.email == "admin@skyblue.com" #to see if the current user is the admin
      @flight = Flight.new
    else
      puts('not authorized')
      redirect_to root_path
    end

  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights or /flights.json
  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1 or /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1 or /flights/1.json
  def destroy
    @reservations = Reservation.all
    @reservations.each do |res|
    	if res.flight_id == @flight.id
    		res.destroy
    	end
    
    end
    
    @flight.destroy

    respond_to do |format|
      format.html { redirect_to flights_url, notice: "Flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:name, :flight_id, :manufacturer, :originCity,  :destinationCity, :capacity, :status, :flight_cost, :flight_class)
    end


  # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :user_id, :credit_card_number, :address, :mobile, :email, :password, :password_confirmation)
    end
end
