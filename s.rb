#!/usr/bin/ruby

t=Integer(gets.chomp)

while t > 0 do 

	full_name = String(gets.chomp)
	center = full_name.length/2


		if full_name.length % 2 == 0
			first_part = full_name[0,center]
			second_part = full_name[center..-1]
		else
			first_part = full_name[0,center]
			second_part = full_name[center+1..-1]
		end

	first_part=first_part.chars.sort.join
	second_part=second_part.chars.sort.join


	
		if first_part == second_part
			puts "YES"
		else
			puts "NO"
		end 

	t = t-1
end

