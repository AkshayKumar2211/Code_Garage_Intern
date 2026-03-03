class GetSetter
    def initialize
        puts "This is the getter and the setter class...";
    end

    def setter =(taste)
        @taste=taste;
    end

    def getter
        return @taste;       
    end

end

t1=GetSetter.new;

t1.setter 'Spicy' ;

puts(t1.getter);


# for i in 1..5 
#     puts i;
# end



