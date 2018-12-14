module BabysitterKata
  BEFORE_BEDTIME = 10
  AFTER_BEDTIME = 6
  AFTER_MIDNIGHT = 8

  def self.calculate_earnings(arrival_time, departure_time, bedtime)
    total_amount = 0

    # Can't arrive before 5
    if arrival_time.to_i < 5
      arrival_time = 5
    end

    # Can't stay after 4
    if departure_time.to_i > 4
      departure_time = 4
    end
    # Add the before bedtime amount
    total_amount += (bedtime.to_i - arrival_time.to_i) * BEFORE_BEDTIME

    # Add the after bedtime but before midnight amount
    total_amount += (12 - bedtime.to_i) * AFTER_BEDTIME

    # Add the after midnight amount
    total_amount += departure_time.to_i * AFTER_MIDNIGHT
  end
end
