require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  #binding.pry
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, seasonal_holidays|
    if season == :winter
      seasonal_holidays.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, seasonal_holidays|
    if season == :spring
      seasonal_holidays.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    puts "#{season}:".to_s.capitalize.chomp
      #<--holidays.collect do |holiday, supplies|
        #still |symbol,  array|
        #holiday = holiday.to_s.gsub("_", " ").split
          #now it's |array, array|
          #holiday.collect do |h|
            #h.capitalize!
          #end
          #holiday.join(" ")
          binding.pry
      #<--end
      #holiday.join(" ")
      #binding.pry
  end
end
#puts "  #{holiday}: " + supplies.join(", ")
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
