$player = []

$player << {
	:p_class => 'fighter',
	:gender => ['male','female'].sample
	:race => ['human', 'dwarf','halfling','gnome'].sample
}
$player << {
	:p_class => 'rogue',
	:gender => ['male','female'].sample
	:race => ['elf', 'human','half-orc','gnome'].sample
}
$player << {
	:p_class => 'wizard',
	:gender => ['male','female'].sample
	:race => ['halfling', 'elf','human','dragonborn'].sample
}
$player << {
	:p_class => 'cleric',
	:gender => ['male','female'].sample
	:race => ['human', 'halfling','half-orc','elf'].sample
}