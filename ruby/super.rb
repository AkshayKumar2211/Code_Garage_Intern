# # class SecondClass
# #     def second a=5 b=10
# #         puts "Method in the super class #{a} #{b}";
# #     end
# # end


# # class ChildClass
# #     def initialize
# #         puts "This is the sub class ...";
# #     end






# class SuperClass
#     def display a = 0, b = 0
#         puts "Parent class, 1st Argument: #{a}, 2nd Argument: #{b}"
#     end
# end

# class SubClass < SuperClass

  
#     def display a, b
        
       
#         super  # this will pass the both agruement by default...
        
       
#         super a  # this will pass a 
        
       
#         super a, b # this will pass both the arguement ...
        
      
#         super()   # this will not pass anything and the default parameters are printed ...
        
#         puts "Hey! This is subclass method"
#     end
# end

# obj = Subclass.new


# obj.display "Sudo_Placement", "GFG"




# Practice the use of super method ....

class CalCulator
    def initialize
        puts "This is the super method ...";
    end

    def calculator a=2 ,b =2
        puts "The sum of a and b is #{a+b}";
        puts "The dividion of a and b is #{a-b}";
        puts "The multiplication of a and b is #{a*b}";
        puts "The division of a and b is #{a/b}";
    end
end


class Subcalculator < CalCulator
    def initialize
        puts "this is the sub class ...";
    end

    def calculator a,b
        
        super ;

        puts("After first super");

         super a;

         puts("After second super");

        super a , b;
         puts("After third super");

         super();

    end

end


test1 =Subcalculator.new;
test1.calculator(15,3);


