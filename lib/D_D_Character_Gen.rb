class CharacterBuilder
  attr_writer :p_class, :race, :gender, :age, :name
    def initialize
      p_class
      race
      gender
      age
      name
    end
    def p_class
      @p_class=["rogue", "wizard", "fighter", "cleric"].sample
    end
    def gender
      @gender=["male","female"].sample
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
    def to_s
        "Hello #{@name}: You are a #{@gender} #{@race} #{@p_class}, aged #{@age}. \n"
    end
end

CharacterBuilder.class_eval do 
  def name
    if @race=="human" && @gender=="male"
      then @name=["Xanfire","Demetri","John","Captain"].sample 
    elsif @race=="human" && @gender=="female"
     then @name=["Fhalynn","Gwynn","Ella","Bella"].sample
    elsif @race=="elf" && @gender=="male"
     then @name=["Aidan","Bijan","Cedric","Daran"].sample
    elsif @race=="elf" && @gender=="female"
     then @name=["Elda","Galen","Julie","Lina"].sample
    elsif @race=="half-orc" && @gender=="male"
    then @name=["Ig","Anon","Hagu","Tilge"].sample
   elsif @race=="half-orc" && @gender=="female"
     then @name=["Perge","Qa","Xuga","Yroh"].sample
   elsif @race=="gnome" && @gender=="male"
     then @name=["Thosun","Delster","Belili","Duerdin"].sample
   elsif @race=="gnome" && @gender=="female"
     then @name=["Elyryan","Cyniver","Alaellyra","Merwngwen"].sample
   elsif @race=="dwarf" && @gender=="male"
     then @name=["Lugnus", "Marin", "Musin", "Nomli"].sample
   elsif @race=="dwarf" && @gender=="female"
     then @name=["Bykila", "Fikila", "Gylan", "Nale"].sample
   elsif @race=="halfling" && @gender=="male"
    then @name=["Milo","Olo","Kelpi","Otho"].sample
   elsif @race=="halfling" && @gender=="female"
     then @name=["Ruby","Poppy","Portia","Violet"].sample
   elsif @race=="eladrin" && @gender=="male"
     then @name=["Aialon", "Elarahal", "Jiardem", "Laern"].sample
   elsif @race=="eladrin" && @gender=="female"
     then @name=["Sydri","Taris","Turue","Vacquiel"].sample
   elsif @race=="dragonborn" && @gender=="male"
     then @name=["Donaar","Ghesh","Heskan","Kriv"].sample
   elsif @race=="dragonborn" && @gender=="female"
     then @name=["Daar","HArann","Kava","Korinn"].sample
   end
  end
end

player = CharacterBuilder.new
print player
