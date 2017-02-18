class Game
    MAXIMUM_NUMBER = 200 #replaced rand(101) with maximum number
    
    #added @ to share L14 and L15 in prev eg.
    def initialize 
        @secret = rand(MAXIMUM_NUMBER+1) #1 plus one for the total  n between 0-200
        @number_of_tries = 0

        def ask_for_number 
         puts "pick a number between 0 and #{MAXIMUM_NUMBER}:"
        return gets.to_i
        end

            loop do #loop allows user to try again while maintaining the secret number
            @number_of_tries +=1
            guess = ask_for_number
            if @secret>guess
                puts "Your number was smaller"
            elsif @secret<guess 
                puts "Your number was bigger"
            else #deleted puts 
                puts "Your number was right!"
                puts "You tried #{@number_of_tries} times"
                break #loop ends when the right number was guessed
            end
        end
    end
end

game = Game.new
game.run
#removed the run function