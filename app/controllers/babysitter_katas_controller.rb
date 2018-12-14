class BabysitterKatasController < ApplicationController
  def index
  end

  # TODO: Add error catching when the user submits times before 5:00 pm and after
  # 4:00 am, submits anything other than numbers, etc.
  def submit_form
    @total = BabysitterKata.calculate_earnings(params[:arrival_time], params[:departure_time], params[:bedtime])
    respond_to do |format|
      format.js
    end
  end


end
