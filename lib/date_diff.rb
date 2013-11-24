require "date_diff/version"
require 'rubygems'
require 'active_support/all'
require 'i18n'


class Date
  def self.diff(start_date, end_date)
    common_year_days_in_month = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    start_date, end_date = end_date, start_date if start_date > end_date
        
    start_date_month, start_date_day = start_date.month, start_date.day
    end_date_month, end_date_day = end_date.month, end_date.day
    
    day_difference = end_date_day - start_date_day
    
    if (day_difference < 0) 
      day_difference = nday[start_date_month-1] - start_date_day + end_date_day
      end_date_month = end_date_month -1
    end
    
    if (end_date_month < 0) 
      end_date_month = end_date_month + 12
      end_date.year = end_date.year -1
    end   
    
    month_difference = end_date_month - start_date_month
    
    if (month_difference < 0) 
      month_difference = month_difference + 12
      end_date.year = end_date.year -1
    end
    
    year_difference = end_date.year - start_date.year
    
    
    difference_hash =  { :year => year_difference, :month => month_difference, :day => day_difference }
    
  	difference_array = []
  	difference_hash.each do |key, value|
      difference_array << value.to_s + " " + ((value > 1)? I18n.t(key.to_s.pluralize, :default => key.to_s.pluralize.to_s) : I18n.t(key.to_s, :default =>  key.to_s)).to_s if value > 0
    end
    difference_hash[:difference] = difference_array.join(" ").to_s
    difference_hash
    
    
  end
end
