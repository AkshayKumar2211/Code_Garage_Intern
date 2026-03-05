#didnot understand it ....
def cease_create(s,len)
   
    result = ""
    s.each_char do |ch|
        if ch =~ /[A-Za-z]/
           
            base = ch =~ /[A-Z]/ ? 'A'.ord : 'a'.ord
           
            offset = (ch.ord - base + len) % 26
            result << (base + offset).chr
        else
           
            result << ch
        end
    end
    result
end



puts (cease_create("vvsdvjbsdjbcsjbkjdbdsj",5))