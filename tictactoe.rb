
#Daniel Aksenov
#Tic Tac Toe Game


#global variable
$player = 'X' 


#method for printing out grid
def printCell cell 
    
    #nested loop to go through multi dimensional array
    cell.each do |x|
    	x.each do |y|
    		print " #{y} "
    	end
    puts "\n"
    end
end 

#method for inputing and checking player's move
def playerMove cell

	puts "Player " + $player +  " will go. Please Enter the value on the grid to make your move."
	input = gets.chomp
    move = input.to_i
	
	#case statement uses if statements to check if a move has been made, if not enters the players move 
	case move
	
	when 1 then 

		if cell[0][0] == 1
			cell[0][0] = $player 
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end
	when 2 then 
        
        if cell [0][1] == 2
         	cell [0][1] = $player
         else 
         	puts 'A move has already been made in that section, try again'
         	playerMove(cell)
		end	
	when 3 then 

		if cell [0][2] == 3
			cell [0][2] = $player
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end	
	when 4 then 

		if cell [1][0] == 4
			cell [1][0] = $player
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end 	
	when 5 then 
		
		if cell [1][1] == 5
			cell [1][1] = $player
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end 	
	when 6 then 

		if cell [1][2] == 6
			cell [1][2] = $player
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end 
	when 7 then 

		if cell [2][0] == 7
			cell [2][0] = $player
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end 	
	when 8 then 

		if cell [2][1] == 8
			cell [2][1] = $player
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end 	
	when 9 then 
		
		if cell [2][2] == 9
			cell [2][2] = $player
		else 
			puts 'A move has already been made in that section, try again'
			playerMove(cell)
		end 
		
	else puts 'You did not input a valid value'
    end
end 
	

 
 
#method for toggling between player 1 and player 2
def playerSwitch 

	if $player == 'X'
		$player = 'O'
	else 
		$player = 'X'
	end
end

#method that checks for win. Uses if statements to check all possible outcomes of a win. If none of the statements are true, returns Draw.
def checkWin cell

	#Player X
	if cell[0][0] == 'X' && cell[0][1] == 'X' && cell[0][2] == 'X'
        return 'X'
    end 
    if cell[1][0] == 'X' && cell[1][1] == 'X' && cell[1][2] == 'X'
        return 'X'
    end
    if cell[2][0] == 'X' && cell[2][1] == 'X' && cell[2][2] == 'X'
        return 'X'
    end
 
    if cell[0][0] == 'X' && cell[1][0] == 'X' && cell[2][0] == 'X'
        return 'X'
    end
    if cell[0][1] == 'X' && cell[1][1] == 'X' && cell[2][1] == 'X'
        return 'X'
    end
    if cell[0][2] == 'X' && cell[1][2] == 'X' && cell[2][2] == 'X'
        return 'X'
    end
    if cell[0][0] == 'X' && cell[1][1] == 'X' && cell[2][2] == 'X'
        return 'X'
    end
    if cell[2][0] == 'X' && cell[1][1] == 'X' && cell[0][2] == 'X'
        return 'X'
    end
 
    #Player O
    if cell[0][0] == 'O' && cell[0][1] == 'O' && cell[0][2] == 'O'
        return 'O'
    end
    if cell[1][0] == 'O' && cell[1][1] == 'O' && cell[1][2] == 'O'
        return 'O'
    end
    if cell[2][0] == 'O' && cell[2][1] == 'O' && cell[2][2] == 'O'
        return 'O'
    end
 
    if cell[0][0] == 'O' && cell[1][0] == 'O' && cell[2][0] == 'O'
        return 'O'
    end
    if cell[0][1] == 'O' && cell[1][1] == 'O' && cell[2][1] == 'O'
        return 'O'
    end
    if cell[0][2] == 'O' && cell[1][2] == 'O' && cell[2][2] == 'O'
        return 'O'
    end
 
    if cell[0][0] == 'O' && cell[1][1] == 'O' && cell[2][2] == 'O'
        return 'O'
    end
    if cell[2][0] == 'O' && cell[1][1] == 'O' && cell[0][2] == 'O'
        return 'O'
    end
 
    return 'Draw'
end 


puts 'Player 1, Enter your name'
playerOne = gets.chomp

puts 'Player 2, Enter your name'
playerTwo = gets.chomp

puts playerOne + " vs " + playerTwo 

#multi dimensional array that represents the tic tac toe cell
cell = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] 


printCell(cell)

#counter to count how many moves have been made
counter = 0

#while loop that keeps the game running till either player wins or a draw is reached
while (1) do
   counter += 1
   playerMove(cell)
   printCell(cell)
    #if statements that call on checkWin method to determine the result of the game
	if checkWin(cell) == 'X'
            puts "#{playerOne} wins!" 
            break
        elsif checkWin(cell) == 'O'
            puts "#{playerTwo} wins!" 
            break 
        elsif checkWin(cell) == 'Draw' && counter == 9
            puts "It's a draw!" 
            break
    end
   #toggles player 
   playerSwitch
end 












