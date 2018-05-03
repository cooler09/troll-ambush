class Barricade
    def all_entries_blocked(entries,items)
        boulders = 0
        boulders = items["boulder"] if !items["boulder"].nil?
        barrels = 0
        barrels = items["barrel"] if !items["barrel"].nil?
        planks = 0
        planks = items["plank"] if !items["plank"].nil?
        has_enough_materials = true
        entries.each do |entry|
            case entry
            when "large"
                if boulders >= 1
                    boulders -= 1
                elsif barrels >= 2
                    barrels -= 2
                elsif planks >= 4
                    planks -= 4
                else
                    has_enough_materials = false
                end
            when "medium"
                if barrels >= 1
                    barrels -= 1
                elsif planks >= 2
                    planks -= 2
                elsif boulders >= 1
                    boulders -= 1
                else
                    has_enough_materials = false
                end
            when "small"
                if planks >= 1
                    planks -= 1
                elsif barrels >= 1
                    barrels -= 1
                elsif boulders >= 1
                    boulders -= 1
                else
                    has_enough_materials = false
                end
            end
        end
        has_enough_materials
    end
end