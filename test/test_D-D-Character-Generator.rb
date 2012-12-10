require File.expand_path(File.dirname(__FILE__) + '/helper')

describe "CharacterBuilder" do

before do
	@player=CharacterBuilder.new
end


it "should have player class" do
   @player.respond_to?(:p_class).should be_true
 end
    #@player(@p_class) should =~ { ["rogue", "wizard", "fighter", "cleric"].sample }


it "should have a race" do
	@player.respond_to?(:race).should be_true
end

it "should have a gender" do
	@player.respond_to?(:gender).should be_true
end

it "should have an age" do
	@player.respond_to?(:age).should be_true
end

it "should have a name" do
	@player.respond_to?(:name).should be_true
end

end