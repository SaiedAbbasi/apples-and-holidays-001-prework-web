require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

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

def add_supply_to_winter_holidays(holiday_hash, supply)
#  holiday_hash.each do |season, data|
#    season.each do |holiday, supplies|
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end




def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

######




def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |day, supplies|
      daystr = day.to_s.split("_").collect do |word| word.capitalize! end
#        do |daycap| 
#        daycap.capitalize!
#        end
#      suppliesstr = puts supplies
      puts "  #{daystr.join(" ")}: #{supplies.join(", ")}"
    end
  end
  
end



######

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_a = []
  holiday_hash.each do |season, events|
    events.each do |holiday, supplies|
      if supplies.include?("BBQ") == true
        bbq_a << holiday
      end
    end
  end    
  return bbq_a
end