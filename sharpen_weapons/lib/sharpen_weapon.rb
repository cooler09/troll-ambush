class Weapon
    attr_accessor :durability
    attr_accessor :type
    def initialize(type,durability)
        if(durability > 1.0)
            raise "durability cannot exceed 1.0"
        elsif(durability < 0)
            raise "durability cannot be less than 0.0"
        end

        @durability = durability
        @type = type
    end
    def sharpen()
        case @type
        when 'mace'
            @durability -= 0.1
        when 'axe'
            @durability -= 0.3
        when 'sword'
            @durability -= 0.5
        when 'arrow'
            @durability -= 0.7
        end
        @durability > 0.0
    end
end