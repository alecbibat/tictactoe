b = {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '}
win = false
def draw_board(b, win)
puts "     |     |     "
puts "  #{b[1]}  |  #{b[2]}  |  #{b[3]}  "
puts "     |     |     "
puts "-----+-----+-----"
puts "     |     |     "
puts "  #{b[4]}  |  #{b[5]}  |  #{b[6]}  "
puts "     |     |     "
puts "-----+-----+-----"
puts "     |     |     "
puts "  #{b[7]}  |  #{b[8]}  |  #{b[9]}  "
puts "     |     |     "
end

def player_picks(b, win)
	turn_over = false
	while b[1] == ' ' or b[2] == ' ' or b[3] == ' ' or b[4] == ' ' or b[5] == ' ' or b[6] == ' ' or b[7] == ' ' or b[8] == ' ' or b[9] == ' ' and turn_over == false
		puts "Pick a square (1-9)."
		position = gets.chomp().to_i
		unless turn_over == true
			if b[position] != ' '
				puts "That space is already full!"
				system("cls")
			else
				b[position] = 'X'
				turn_over = true
				system("cls")
			end
		end
		draw_board(b, win)
	end
	win_check_player(b, win)
	#prompt player to pick 1-9
	#player picks empty square
	#puts x in that position
end

def computer_turn(b, win)
	turn_over = false
		while turn_over == false
			position = rand(1..9)
			if b[position] != ' '
			else
				b[position] = 'O'
				turn_over = true
				system("cls")
			end
			draw_board(b, win)
		end
		win_check_computer(b, win)
end

def win_check_player(b, win)
	if b[1] == 'X' and b[2] == 'X' and b[3] == 'X' or
		b[4] == 'X' and b[5] == 'X' and b[6] == 'X' or
		b[7] == 'X' and b[8] == 'X' and b[9] == 'X' or
		b[1] == 'X' and b[4] == 'X' and b[7] == 'X' or
		b[2] == 'X' and b[5] == 'X' and b[8] == 'X' or
		b[3] == 'X' and b[6] == 'X' and b[9] == 'X' or
		b[1] == 'X' and b[5] == 'X' and b[9] == 'X' or
		b[3] == 'X' and b[5] == 'X' and b[7] == 'X'
		win_message(b, win)
	elsif b[1] != ' ' and b[2] != ' ' and b[3] != ' ' and b[4] != ' ' and b[5] != ' ' and b[6] != ' ' and b[7] != ' ' and b[8] != ' ' and b[9] != ' '
		win_message(b, win)
	else
		computer_turn(b, win)
	end
end

def win_check_computer(b, win)
	if b[1] == 'O' and b[2] == 'O' and b[3] == 'O' or
		b[4] == 'O' and b[5] == 'O' and b[6] == 'O' or
		b[7] == 'O' and b[8] == 'O' and b[9] == 'O' or
		b[1] == 'O' and b[4] == 'O' and b[7] == 'O' or
		b[2] == 'O' and b[5] == 'O' and b[8] == 'O' or
		b[3] == 'O' and b[6] == 'O' and b[9] == 'O' or
		b[1] == 'O' and b[5] == 'O' and b[9] == 'O' or
		b[3] == 'O' and b[5] == 'O' and b[7] == 'O'
		win_message(b, win)
	elsif b[1] != ' ' and b[2] != ' ' and b[3] != ' ' and b[4] != ' ' and b[5] != ' ' and b[6] != ' ' and b[7] != ' ' and b[8] != ' ' and b[9] != ' '
		win_message(b, win)
	else
		player_picks(b, win)
	end
end

def win_message(b, win_result)
	puts 'Game over!'
end



draw_board(b, win)
player_picks(b, win)