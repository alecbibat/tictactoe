	a = "     |     |     "
	b = "     |     |     "
	b_1 = "  X  |     |     "
	b_2 = "     |  X  |     "
	b_3 = "     |     |  X  "
	c = "     |     |     "
	d = "-----+-----+-----"
	e = "     |     |     "
	f = "     |     |     "
	f_1 = "  X  |     |     "
	f_2 = "     |  X  |     "
	f_3 = "     |     |  X  "
	g = "     |     |     "
	h = "-----+-----+-----"
	i = "     |     |     "
	j = "     |     |     "
	j_1 = "  X  |     |     "
	j_2 = "     |  X  |     "
	j_3 = "     |     |  X  "
	k = "     |     |     "

def grid(choice, a, b, b_1, b_2, b_3, f_1, f_2, f_3, j_1, j_2, j_3, c, d, e, f, g, h, i, j, k)
 puts a

 if choice == 1
 	puts b_1
 elsif choice == 2
 	puts b_2
 elsif choice == 3
 	puts b_3
 else
 	puts b
 end

 puts c
 puts d
 puts e

 if choice == 4
 	puts f_1
 elsif choice == 5
 	puts f_2
 elsif choice == 6
 	puts f_3
 else
 	puts f
 end
 
 puts g
 puts h
 puts i
 if choice == 7
 	puts j_1
 elsif choice == 8
 	puts j_2
 elsif choice == 9
 	puts j_3
 else
 	puts j
 end
 puts k
end

puts a
puts b
puts c
puts d
puts e
puts f
puts g
puts h
puts i
puts j
puts k

puts "Choice?"
choice = gets.chomp().to_i
grid(choice, a, b, c, d, e, f, g, h, i, j, k, b_1, b_2, b_3, f_1, f_2, f_3, j_1, j_2, j_3)


#x = true


#while x == true
	#choice = gets.chomp()