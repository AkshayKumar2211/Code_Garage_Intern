# loop here ...

# star pattern in ruby using loop do
i = 0
loop do
    j=0
    loop do
      print" * "
      j+=1;
      break if j==10;
    end  

    puts "\n"
  i += 1
  break if i == 10
end



# while loop in ruby

 i=0;

 while i<5 do
    puts "This is while loop in ruby";
    i+=1;
 end


 #star  pattern in while loop ruby

 k=0;

 while k<10 do
    j=0;
    while j<10 do
        print " * ";
        j+=1;
        break if j==10;
    end
    puts "\n";
    k+=1;
    break if k==10;
end;



# untill loop in ruby .....
s=0;

until s>10 do
    puts "print the value of #{s}";
    s+=1
end


# for loop in  ruby ....
 

for a in 1..10 do
    puts "This is shitty syntax for loop in ruby #{a}";
end;




# times loop 

5.times do 
    puts "This is times loop";
end

# time loop with number 

5.times do |number|    
    puts "This is times loop #{number}"  # this will start printing from 0 to 4 ...
end;


