secret = rand(101)

loop do #loop allows user to try again while maintaining the secret number

    puts "Pick a number between 0 and 100:"
    guess = gets.to_i #gets - to store the value that has been input; to_i seeks numerical input
    puts "You picked number #{guess}, and secret number was #{secret}"

    if secret>guess
        puts "Your number was smaller by #{secret-guess}"
    elsif secret<guess 
        puts "Your number was bigger by #{guess-secret}"
    else secret == guess #double = means equal to. single = means assigning to something
        puts "Your number was right!"
        break 
    end

end