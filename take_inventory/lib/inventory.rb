class Inventory
    def take_inventory(items)
        inventory_hash = {}
        items.each do |item|
            if item == "arrow" || item == "bow" || item == "sword" || item == "mace" || item == "torch" || item == "shield" || item == "axe"
                if inventory_hash[item]
                    inventory_hash[item] += 1
                else
                    inventory_hash[item] = 1
                end
            end
        end
        inventory_hash
    end
end