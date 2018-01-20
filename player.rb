class Player

	attr_reader :name, :age, :skill_level

	def initialize (name, age, skill_level)
		@name = name
		@age = age
		@skill_level = skill_level
	end

	def to_s
		"<#{name}: #{skill_level}(SL), #{age}(AGE)>"
	end
end

#person = Player.new("Justin", 25, "Over 9000")
#puts person.to_s
