name = "Farrah"
gender = "Male"
age = 26
is_smoker = false  
is_lazy = true


if gender == "female" 
    puts "#{name} is #{age} years old. Is a smoker? #{is_smoker}. Is lazy? #{is_lazy}."   
elseif gender == "male" 
    puts "#{name} is #{age} years old.  Is lazy? #{is_lazy}."
else 
    puts "invalid"
end

puts age - 1
puts name + " is lazy"
