##pick class randomly
    ##pick race from class
      ##pick age from race
##pick gender
##pick name from race and gender
##print the variables

class CharacterBuilder
  attr_writer :p_class, :race, :gender, :name, :age
    def initialize
      p_class
      race
    end
    def p_class
      @p_class=["rogue", "wizard", "fighter", "cleric"].sample
    end
    def race
     if @p_class=="fighter"
        then @race=["dwarf", "human","gnome"].sample
     elsif @p_class=="wizard"
        then @race=["halfling", "elf","human"].sample
     elsif @p_class=="cleric"
        then @race=["elf", "halfling","half-orc"].sample
     elsif @p_class=="rogue"
        then @race=["elf", "half-orc","human"].sample
     end
    end
    def to_s
        "Player: #@p_class #@race \n"
    end
end

class ElfCharacter < CharacterBuilder
  attr_writer :gender, :name, :age
  def initialize(p_class, race, name, age, gender)
    super(p_class,race)
      @name = name
      @age = age
      @gender = gender
   end
   def gender
    @gender=["male", "female"].sample
    end
    def name
      if @gender=="male"
        @name=["Draugnon", "Yalaenon","Aranion"].sample
      elsif @gender=="female"
        @name=["Eruwen", "Caeliel","Nostimra"].sample
      end
    end
    def age
      @age=(rand(120))
    end
    def to_s
       super + ", #@gender, #@name, #@age \n"
    end
end


player = CharacterBuilder.new
print player

elf = ElfCharacter.new
print elf
##if player.race=="elf"
  ##then ElfCharacter.new
  ##puts player.gender
  ##puts player.name
  ##puts player.age
  ##puts player.p_class
  ##puts player.race