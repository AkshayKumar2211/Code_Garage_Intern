
# this how i will create hash in ruby .....
hash1={
    1=> "first",
    2=> "second",
    3=> "Third",
    4 => "fourth"
}
# accessing element in the hash ....
puts hash1[1];
puts hash1[2];
puts hash1[3];
puts hash1[4];


# creationg hash using new 
newHash=Hash.new

newHash={
    "1"=> "first",
    "2"=> "second",
    "3"=> "Third",
    "4" => "fourth"
}



puts newHash;

puts newHash["1"];

puts newHash.keys;  # to get all the key values ....

puts newHash.values; # to get all the values ....


mergeHash= hash1.merge(newHash);  # this will merge the hash ....
 
puts mergeHash;



# cases in ruby ....


i=10

case i
when 1
    puts "Its monday"
when 2
    puts "Its tuesday"
when 3
    puts "Its wednesday"
when 4
    puts "Its thursday"
when 5
    puts "Its friday"
when 6
    puts "Its saturday"
when 7
    puts "Its sunday"
else
    puts "please valid number"
end



