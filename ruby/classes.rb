# classes in  ruby ...

class FirstClass
    def prin
        puts "This is my first class creation....";
    end

end


obj1=FirstClass.new
obj1.prin();



#class with instance variables...
# instnace variable are the variable which belongs to a particular object 

class Dog 

    def initialize()
        #@aa=a;
        #@bb=b;
        puts "This is a constructor in ruby... #{@aa} ,#{@bb}"
    end


    def checkCons
        puts "This is also a constriuctor";
    end

    def helloDog(name)
        @dogname=name
        puts "Hello doggy #{@dogname}";
    end

    def changeName
        @dogname="Parsi";
    end

    def printName
        puts @dogname;
    end
end


dog1=Dog.new;

dog1.helloDog("Cesor");

dog2=Dog.new;
dog2.helloDog("Pluto");

dog2.changeName();
dog2.printName();
dog1.printName();



class Tresure
    def initialize(aName,aDescription)
        @name=aName;
        @description=aDescription;
    end

end


t1=Tresure.new("Tresure hunt" ,"This is shitty tresure hunt....");

puts(t1.inspect);

p(t1);

# this is the example of superclass and sub class.....
class Beast
    def initialize(as,bs)
        @an=as;
        @bn=bn;
        puts "This is the super class...";
    end

    def supraMeothod
        puts "This is super class method this will be inherited....";
    end

    def setName(name, work)
        @named=name;
        @worked=work;
    end

end


class Brovo < Beast
    def initialize
        puts "this is the subclass..."
    end
end



brovo1=Brovo.new(12,20);


puts "Method called by the base class...."
brovo1.supraMeothod();

brovo1.setName("Akshay kumar" ,"Work in the It Department");

puts(brovo1.inspect);

puts "This is the super class ...";












