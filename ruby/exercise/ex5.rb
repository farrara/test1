#class

class Person #Person needs to be capital so the comp understand it is a class, not a variable

    def initialize(name,age,is_smoker,is_lazy) #in brackets are arguments
        @name = name
        @age = age
        @is_smoker = is_smoker
        @is_lazy = is_lazy
    end
    
    def describe #shared variables 
       puts "#{@name} is #{@age} years old. Is #{@name} a smoker? #{@is_smoker}. Is #{@name} lazy? #{@is_lazy}."
    end
    
    def smoker?
        if @is_smoker
            puts "Yes, #{@name} is a smoker"
        else
            puts "No, #{@name} is not a smoker"
        end
    end
end



 #create variable = farrah
farrah = Person.new("Farrah",27,false,false) #creation on the Person
farrah.describe
farrah.smoker?

lisa = Person.new("Lisa",26,true,true) 
lisa.describe
lisa.smoker?
