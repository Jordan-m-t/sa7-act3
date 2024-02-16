total_points = 0
room_points = [0, 5, 10, 15]

def enter_room(room_number, total_points, room_points)
    points = room_points[room_number]
    total_points += points

    puts "You entered Room #{room_number} and earned #{points} points."
    puts "You now have #{total_points} points."
    total_points
end

puts 'Welcome to the Adventure Game!'
puts "You have #{total_points} points. 50 points wins the game."

loop do
    puts 'Choose a room (1-3) to enter or \'exit\' to end the game:'
    choice = gets.chomp.downcase
    break if choice == 'exit'

    room_number = choice.to_i
    if room_number.between?(1, 3)
        total_points = enter_room(room_number, total_points, room_points)
    else
        puts 'Invalid choice. Please enter a number between 1 and 3.'
    end

    if total_points >=50 
        puts "Congratz! You win! Thank you for playing!"
        break 
    end

end

puts "Game over! You collected a total of #{total_points} points."
