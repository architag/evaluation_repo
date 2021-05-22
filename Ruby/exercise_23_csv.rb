require 'csv'

details = Hash.new { |hash, key| hash[key] = []}
output = ""

CSV.foreach("names.csv", headers:true) do |row|
  details[row[2]] << [row[0], row[1]]
end

details.each { |k, v| v.sort! {|a,b| a[1] <=> b[1]} }
details = details.sort_by { |k, v| k }.to_h

details.each do |k,v|
  if details[k].length == 1
    output += "#{k}\n"
  else
    output += "#{k}s\n" if details[k].length > 1
  end
  details[k].each { |name, id| output += "#{name} (EmpId: #{id})\n" }
end

File.write("names.txt", output)
