class ClosestToZeroKatasController < ApplicationController
  def index
  end

  def submit_form
    numbers = params[:numbers].split(" ")
    @closest = ClosestToZeroKata.calculate_closest(numbers)
    respond_to do |format|
      format.js
    end
  end
end
