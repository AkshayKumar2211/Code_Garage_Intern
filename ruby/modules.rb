module Speak
    def speak(sound)
        puts sound
    end
end

class Dog
    include Speak

    def run
        puts "The dog is running...."
    end
end

class Human
    include Speak 
       def run
        puts "The human is running...."
    end
end


human1=Human.new

human1.speak("Yo whatsapp ...");

dog1=Dog.new

dog1.speak("Humans are idiot");



