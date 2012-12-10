require File.expand_path(File.dirname(__FILE__) + '/helper')

describe "CharacterBuilder" do

before do
	@player=CharacterBuilder.new
end


it "should have player class" do
   @player.respond_to?(:p_class).should be_true
 end
    #@player(@p_class) should =~ { ["rogue", "wizard", "fighter", "cleric"].sample }
end

it "should have a race" do
	pending
end

it "should have a gender"
	pending
end

it "should have an age" do
	pending
end

it "should have a name" do
	pending
end

end