class Calculator

    def initialize(a,b)
        @first=a 
        @second=b 
    end

    def add
        sum=@first+@second;
        puts "The sum of a and b is #{sum}"
    end

    def subtract
        sub=@first-@second
        puts "The subtraction of a and b is #{sub}"
    end

    def multiply 
        mul=@first*@second
        puts "The multiplication of a and b is #{mul}"
    end

    def division 

        if(@second==0)
            puts "Cannot divide with 0"
            return
        end
        
        div=@first/@second
        puts "The division of a and b is #{div}"
    end

end


puts "Welcome to a normal claculator"

condition=true   

while true
puts "Enter the value of a::"

a=gets()

while(!(a.match?(/\A-?\d+(\.\d+)?\Z/)))
     puts "Please enter a valid value of a ::"
     a=gets()
end

a=a.to_f;

puts "Enter the value of b:::"

b=gets()

while(!(b.match?(/\A-?\d+(\.\d+)?\Z/)))
     puts "Please enter a valid value of b::"
     b=gets()
end

b=b.to_f



obj1=Calculator.new(a,b)

    puts "Enter your choice: \n" \
        "press 1 for addition \n" \
        "press 2 for subtraction \n" \
        "press 3 for multiplication \n" \
        "press 4 for division \n" \
        "press 5 to exit"
    con=gets().to_i


        case con
        when 1
            obj1.add
        when 2
            obj1.subtract
        when 3 
            obj1.multiply
        when 4
            obj1.division
        when 5
        break;
            else
                puts "Please enter a valid operation.."
        end

    end
