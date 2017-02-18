class Game
    #replaced run with initialize
    def initialize 
        secret = rand(101)
        number_of_tries = 0

        def ask_for_number 
         puts "pick a number between 0 and 100:"
        return gets.to_i
        end

            loop do #loop allows user to try again while maintaining the secret number
        
            number_of_tries +=1
            guess = ask_for_number
        
            if secret>guess
                puts "Your number was smaller"
            elsif secret<guess 
                puts "Your number was bigger"
            else secret == guess #double = means equal to. single = means assigning to something
                puts "Your number was right!"
                puts "You tried #{number_of_tries} times"
                break #loop ends when the right number was guessed
            end
        end
    end
end

game = Game.new
#removed the run function