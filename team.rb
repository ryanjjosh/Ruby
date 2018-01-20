#team.rb

class Team
	include Enumerable # LOTS of functionality

	attr_accessor :name, :players
	def initialize (name)
		@name = name
		@players = []
	end
	def add_players (*players)  # splat
		@players += players
	end
	def to_s
		"#{@name} Team: #{@players.join(",")}"
	end
	def each
		@players.each { |player| yield player }
	end
end

#groundhogs = Team.new("The Groundhogs")
#groundhogs.add_players("Jeremy", " Jordan", " Jamal")
#puts groundhogs