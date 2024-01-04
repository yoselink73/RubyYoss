#!/usr/bin/env ruby
class MegaGreeter
    attr_accessor :names

    #se crea el objeto
    def initialize(names = "wordld")
        @names = names
    end

    # di hola a todos
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            #@names es una lista de algo, iterala!
            @names.each do |name|
                puts "hello #{name}!"
            end
        else
            puts "hello #{@names}!"
        end
    end
    #di bye a todos
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            #une la sista de elemntos con comas
            puts "Goodbye #{@names.join(", ")}, come back soon!"
        else
            puts "Goodbye #{@names}. come back soon!"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    #cambia el nombre para que sea "zeke"
    mg.names = "zeke"
    mg.say_hi
    mg.say_bye

    #cambia el nombre en el arreglo de nombres
    mg.names = ["albert","brenda","charles","dave","engelbert"]
    
    mg.say_hi
    mg.say_bye

    #cambia a nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
end