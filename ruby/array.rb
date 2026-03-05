# array in ruby ...

num=[1,2,3,4,5,6];

puts num;  # this will print the array elements like iterating ..

# print num; # this will print whole array ....

str_array =["Akshay","Alina","Riya", "Preeti"];

puts str_array; 

# print str_array;

arr=Array.new(8,7)


arr.push(10);
arr.push(11);
puts arr;

arr.pop();

puts "After the pop operation.."

puts arr;

arr.unshift(235);  #put the element at the start of the array....
puts "After the unshift command"


puts arr;

arr.shift; # this will be remove first element in the array ....

puts "After the shift command...";

puts arr;

puts "Print using for in  loop ..."

for a in arr
    puts a;
end


puts "Print the array element using for loop"

len=arr.length;

i=0;

while (i<len) do
    puts arr[i]
    i+=1
end


newArr=Array.new(10,3);

concatArr=arr+newArr;

print concatArr;

arr1=arr.join;

puts "convert array into the string..";

puts arr1;

arr2=arr.join('-');

puts arr2;
puts "Print using each do"
arr.each do |a|
    puts a
end





