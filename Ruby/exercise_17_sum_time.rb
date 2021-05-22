require 'time'

def time_sum(input_1, input_2)
  hour_1, min_1, sec_1 = input_1.split(':')
  hour_2, min_2, sec_2 = input_2.split(':')
  if hour_1 =~ /^[0-9]$|^[0-1][0-9]$|^2[0-3]$/ && hour_2 =~ /^[0-9]$|^[0-1][0-9]$|^2[0-3]$/ && min_1 =~ /^[0-9]$|^[0-5][0-9]$/ && min_2 =~ /^[0-9]$|^[0-5][0-9]$/ && sec_1 =~ /^[0-9]$|^[0-5][0-9]$/ && sec_2 =~ /^[0-9]$|^[0-5][0-9]$/
    time_1 = Time.parse(input_1)
    time_2 = Time.parse(input_2)
    add_seconds = time_2.hour*3600 + time_2.min*60 + time_2.sec
    
    time_sum = time_1 + add_seconds
    days = time_sum.day - time_1.day
    
    return time_sum.strftime("%H:%M:%S") if days == 0
    time_sum.strftime("#{days} day & %H:%M:%S")
  else
    "Invalid 24-hour time value"
  end
end

puts "Please provide an input"
input = gets.chomp
time_1, time_2 = input.split(" ")
time_1.gsub!("\"", "")
time_2.gsub!("\"", "")

puts time_sum(time_1, time_2)
