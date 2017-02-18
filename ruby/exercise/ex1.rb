def say_hello(name,day)
    #name = argument 1; day = argument 2
    puts "good morning, #{name}. How are you #{day}?" #function
end

say_hello("Gregorz","today")
say_hello("Ted","tomorrow") 
say_hello("Farrah","yesterday")



def add_numbers(num1,num2)
    puts "total= #{num1 + num2}"
    puts num1 + num2
    puts num1 - num2
    puts num1*num2
end

add_numbers(55,77) 
add_numbers(1,3)
add_numbers(2,7)