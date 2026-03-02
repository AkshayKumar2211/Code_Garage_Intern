# To Print hello worlds use puts
puts "Hello World::";

puts "First program in ruby";


#how to declare function in ruby....
def firstFunction()
        puts"This is my first function...";
end

#how to call a function in ruby..
firstFunction();

print("Enter your name:::");

# get input in ruby ....
name=gets();


# embedde name with string...
puts("Hello #{name}");


# next line .. 
puts("\n\t{(1+2)*3}");


# functions

def secondfunction(name)
    puts ("Hell0 #{name}")
end

secondfunction("Anisha");


#function with return 

def thirdFunction(name)
    return "Hello this function return #{name}";
end

puts(thirdFunction("Anaya"));


#function with many parameters

def fourtFunction(aname,bname)
    puts("Hello #{aname} and #{bname}");
    return "Hello this is fourth function";
end

puts(fourtFunction("Alisha","Mia"));


#function without bracket

 def fivethFunction aname,bname,cname
    puts("Hello from the fifth function #{aname} ,#{bname} ,#{cname}");
 end

 fivethFunction("Niya","Jiya","Priya");


 print("Enter the number1...");

 number1=gets;

 # convert the string to number
 number1=number1.to_f;

 
 print("Enter the number2....");

 number2=gets;

  # convert the string to number
 number2=number2.to_f;

 puts("Multiply #{number1 * number2}");




 # print according to age..


 def printAccordingToAge(age)
     if(age<18)
        puts "The person is a teenager...";
     
    elsif(age>18 && age<50)
        puts "The person is a adult...";
    else
        puts "The person is senior citizen"
    end
end





printAccordingToAge(10);
printAccordingToAge(20);
printAccordingToAge(75);


#Loops in ruby

p="Learn to print in ruby...";

for a in 1..5 do
    puts p;
end