class GetSetter
    def initialize
        puts "This is the getter and the setter class...";
    end

    def setter=(taste)  # do not provide space here  it will throw a syntax error... setter 
        @taste = taste
    end

    def getter
        return @taste;       
    end

end

t1=GetSetter.new;

t1.setter = 'Spicy'

puts(t1.getter);



age=50;

unless age<18
    puts "Get a job....";
end






