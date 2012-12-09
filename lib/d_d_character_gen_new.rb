class CharacterBuilder
  attr_writer :player, :p_class, :race, :gender, :age
    def initialize
    @player = {
      p_class: " ", race: " ", gender: " ", age: " ", name: " " 
    }
    #def initialize
     # p_class
      #race
      #gender
      #age
    #end
    def p_class
      @p_class={:p_class=>["rogue", "wizard", "fighter", "cleric"].sample}
      #@player.select{ |k,v| == :p_class}
    end
    def gender
      @gender={:gender=>["male","female","trans"].sample}
      #@player.select{ |k,v| == :gender}
    end
    def race
     if @p_class=="fighter"
        then @race={:race=>["dwarf", "human","gnome"].sample}
     elsif @p_class=="wizard"
        then @race={:race=>["halfling", "elf","human"].sample}
     elsif @p_class=="cleric"
        then @race={:race=>["elf", "halfling","half-orc"].sample}
     elsif @p_class=="rogue"
        then @race={:race=>["elf", "half-orc","human"].sample}
     end
    end
    def age 
      if @race=="elf" 
        then @age=(rand(15..150))
      elsif @race=="human"
        then @age=(rand(15..50))
      elsif @race=="wizard"
        then @age=(rand(15..130))
      elsif @race=="gnome"
        then @age=(rand(15..130))
      elsif @race=="dwarf"
        then @age=(rand(15..90))
      elsif @race=="halfling" 
        then @age=(rand(15..100))
      elsif @race=="half-orc" 
        then @age=(rand(15..120))
      end
    end 
    def set_symbol(p_class, race, gender,age)
    def to_s
        @player.to_s
        #{}"Player: #@gender #@p_class #@race, age #@age \n"
    end
    def self.hi
    puts "Hello world!"
  end
end

player = CharacterBuilder.new
print player



#to build: naming based on race and stat generator