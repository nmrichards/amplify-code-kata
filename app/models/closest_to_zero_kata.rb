module ClosestToZeroKata
  def self.calculate_closest(numbers)
    # used to keep track of the actual number
    closest_number = numbers.first

    numbers.each do |num|
      if num.to_i.abs < closest_number.to_i.abs
        closest_number = num
      elsif num.to_i.abs == closest_number.to_i.abs
        closest_number = [num.to_i, closest_number.to_i].max
      end
    end

    return closest_number
  end
end
