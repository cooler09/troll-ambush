require_relative 'troll'

def attack(difficulty, is_crit)
    damage = 0
    if !is_crit
        case difficulty
        when 1
            damage = rand(1..3)
        when 2
            damage = rand(2..4)
        when 3
            damage = rand(3..5)
        end
    else
        case difficulty
        when 1
            damage = rand(3..5)
        when 2
            damage = rand(4..6)
        when 3
            damage = rand(5..7)
        end
    end
    return damage
end
# 3 groups
# 25 hp
# perfect: 42
# worst: 6
# average: 26
troll = Troll.new(25)
teams = ["team 1", "team 2", "team 3"]
while troll.is_alive?
    teams.each do |team|
        puts "Input #{team}'s difficulty/weakness: ex 1,true"
        input = gets.chomp.split(',')
        damage = attack(input[0].to_i,input[1] == "true")
        puts "#{team} generated #{damage} damage"
        troll.take_damage(damage)
        puts troll.display_info

    end
end

