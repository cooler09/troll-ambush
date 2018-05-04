def sharpen_weapon(weapon,durability)
    is_sharpened = false
    case weapon
    when 'mace'
        is_sharpened = durability > 0.1
    when 'axe'
        is_sharpened = durability > 0.3
    when 'sword'
        is_sharpened = durability > 0.5
    when 'arrow'
        is_sharpened = durability > 0.7
    end
    is_sharpened
end

=begin
Weapons have different durability levels. Write a function to sharpen a weapon based on what the durability can handle
* if a weapon durability goes does to 0.0 the weapon is broken
* Axe sharpen process takes 0.3 from the durability
* Mace sharpen process takes 0.1 from the durability
* Sword sharpen process takes 0.5 from the durability
* Arrow sharpen process takes 0.7 from the durability
* Expected Input: a string with a valid weapon, a float from 0.1 to 1.0 indicating the durability level 
* Expected Output: boolean indicating whether our sharpen process was successful or not
=end
puts sharpen_weapon('axe',5)