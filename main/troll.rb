class Troll

    attr_accessor :health

    def initialize(health)
        @health = health
    end

    def take_damage(damage)
        @health = @health - damage
    end
    def is_alive?
        @health > 0
    end
    def display_info
        if is_alive?
            "The troll has #{@health} remaining!"
        else
            "The troll has been defeated!"
        end
    end
end