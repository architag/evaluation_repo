require 'time'

def time_sum(input)
  base_time = Time.parse("0:0:0")
  add_seconds = 0
  input.each.with_index do |var, index| 
    hour, min, sec = var.split(':')
    if hour =~ /^[0-9]$|^[0-1][0-9]$|^2[0-3]$/ && min =~ /^[0-9]$|^[0-5][0-9]$/ && sec =~ /^[0-9]$|^[0-5][0-9]$/
      time_var = Time.parse(var)
      if index == 0
        base_time = time_var
      else
        add_seconds += time_var.hour*3600 + time_var.min*60 + time_var.sec
      end
    else
      return "Invalid 24-hour time value"
    end
  end
  time_sum = base_time + add_seconds
  days = time_sum.day - base_time.day

  return time_sum.strftime("%H:%M:%S") if days == 0
  time_sum.strftime("#{days} day & %H:%M:%S")
end

puts "Please provide an input"
input = gets.chomp

time_input = input.split(" ")
time_input.each {|time_var| time_var.gsub!("\"", "")}

puts time_sum(time_input)
