require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |k,v|
    if v.is_a?(Hash)
      v.each do |key, value|
        value << "Balloons"
      end 
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # holiday_hash[season][holiday_name] = supply_array
  # holiday_hash
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter][:christmas].concat(holiday_hash[:winter][:new_years])
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |k,v|
    puts "#{k.capitalize}:"
    if v.is_a?(Hash)
      v.each do |key,val|
      newKey = key.to_s
      outKey = newKey.gsub("_", " ")
      puts "  #{outKey.split(/ |\_/).map(&:capitalize).join(" ")}: #{val.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  out = []
  holiday_hash.each do |k,v|
      if v.is_a?(Hash)
        v.each do |key,val|
          if val.include?("BBQ")
            out << key
          end
        end
      end
    end
    out
end







