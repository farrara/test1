#gives user the choice what to do

class Game
    MAXIMUM_NUMBER = 10 #replaced rand(101) with maximum number
    
    #added @ to share L14 and L15 in prev eg.
    def initialize 
        @secret = rand(MAXIMUM_NUMBER+1)
        @number_of_tries = 0
        @previous_tries = []
    end 
    
    def ask_for_number 
        puts "pick a number between 0 and #{MAXIMUM_NUMBER}:"
        return gets.to_i
    end
    
    def run
        loop do #loop allows user to try again while maintaining the secret number
            @number_of_tries +=1
            guess = ask_for_number
            @previous_tries << guess
            
            if @secret>guess
                puts "Your number was smaller"
            elsif @secret<guess 
                puts "Your number was bigger"
            else #deleted puts 
                puts "Your number was right!"
                puts "You tried #{@number_of_tries} times"
                puts "Your tries were #{@previous_tries}"
                break #loop ends when the right number was guessed
            end
        end
    end
end

loop do
    puts "What do you want to do"
    puts "1 - play"
    puts "2 - exit"
    
    choice = gets.to_i
    if choice == 1
        Game.new.run
    elsif choice == 2
    break
    else 
        puts "please only enter 1 or 2"
        
    end
end

