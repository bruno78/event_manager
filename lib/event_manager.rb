puts "EventManager Initialized!"

lines = File.readlines "event_attendees.csv"
lines.each_with_index do |line, index|
	next if index == 0
	columns = line.split(',')
	name = columns[2]
	last_name = columns[3]
	zipcode = columns[9]
	puts "#{name} #{last_name} #{zipcode}"
end
