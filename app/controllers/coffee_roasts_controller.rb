class CoffeeRoastsController < ApplicationController
  before_action :set_coffee_roast, only: [:show, :edit, :update, :destroy]

  # GET /coffee_roasts
  # GET /coffee_roasts.json
  def index
    @coffee_roasts = CoffeeRoast.all
  end

  # GET /coffee_roasts/1
  # GET /coffee_roasts/1.json
  def show
  end

  # GET /coffee_roasts/new
  def new
    @coffee_roast = CoffeeRoast.new
  end

  # GET /coffee_roasts/1/edit
  def edit
  end

  # POST /coffee_roasts
  # POST /coffee_roasts.json
  def create

    @coffee_roast = CoffeeRoast.new(coffee_roast_params)
        account_sid = 'ACf2f5142ffa4e6436cfdb55e1f98bc122'
     auth_token = '6c5ab77c9110288fc301751a61c92966'
    @client = Twilio::REST::Client.new account_sid, auth_token
      message = "Hey here #{@coffee_roast.username}' was just added.,#{@coffee_roast.email_id},#{@coffee_roast.mobile_number},#{@coffee_roast.occasion}, #{@coffee_roast.query}"
     @client.api.account.messages.create(from: '+12162088447',to: '+918827047626',body: message )

    respond_to do |format|
      if @coffee_roast.save
        format.html { redirect_to new_coffee_roast_path, notice: 'Coffee roast was successfully created.' }
        format.json { render :new, status: :created, location: new_coffee_roast_path }
      else
        format.html { render :new }
        format.json { render json: @coffee_roast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffee_roasts/1
  # PATCH/PUT /coffee_roasts/1.json
  def update
    respond_to do |format|
      if @coffee_roast.update(coffee_roast_params)
        format.html { redirect_to @coffee_roast, notice: 'Coffee roast was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffee_roast }
      else
        format.html { render :edit }
        format.json { render json: @coffee_roast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_roasts/1
  # DELETE /coffee_roasts/1.json
  def destroy
    @coffee_roast.destroy
    respond_to do |format|
      format.html { redirect_to coffee_roasts_url, notice: 'Coffee roast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_roast
      @coffee_roast = CoffeeRoast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffee_roast_params
      params.require(:coffee_roast).permit(:username, :query, :mobile_number, :email_id, :occasion)
    end
end
