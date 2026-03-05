filecreate=File.new("sample.txt","w+");
filecreate.syswrite("this is how you create a file in ruby");

filecreate.close();



# File Handling Program

# Opening a file
fileobject = File.open("sample.txt", "r"); 

# Reading the first n characters from a file
puts(fileobject.sysread(21));

# Closing a file
fileobject.close();                         

# Opening a file
fileobject = File.open("sample.txt", "r");     

# Read the values as an array of lines
print(fileobject.readlines);             
puts

# Closing a file
fileobject.close();                        

# Opening a file
fileobject = File.open("sample.txt", "r"); 

# Read the entire content from a file
print(fileobject.read());    

# Closing a file
fileobject.close();