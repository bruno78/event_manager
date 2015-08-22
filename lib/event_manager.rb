require "csv"

def zipcode_fix(zipcode)
	zipcode.to_s.rjust(5, "0")[0..4]
end

puts "EventManager Initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
	name = row[:first_name]
	zipcode = zipcode_fix(row[:zipcode])
	puts "#{name} #{zipcode}"
end
