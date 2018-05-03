# Different battle stations are located around the village.
# You need to solve the outermost battles stations
# Write an algorithm that returns an array of the outermost points of the 2d array
# Example: look at spec file for example data
class Perimeter
    def calculate(array)
        final_array = []
        calculate_type(array,"left").each do |item|
            final_array.push(item) if !final_array.include?(item)
        end
        calculate_type(array,"right").each do |item|
            final_array.push(item) if !final_array.include?(item)
        end
        calculate_type(array,"top").each do |item|
            final_array.push(item) if !final_array.include?(item)
        end
        calculate_type(array,"bottom").each do |item|
            final_array.push(item) if !final_array.include?(item)
        end
        final_array
    end
    private
    def calculate_type(array,type)
        final_array = [].push(array[0])
        index = 0
        if type == "top" || type == "bottom"
            index = 1
        end

        value = array[0][index]
        array.each do |item|

            current_value = item[index]
            if current_value > value  && (type == "bottom" || type == "right")
                value = current_value
                final_array = [].push(item)
            elsif current_value < value  && (type == "top" || type == "left")
                value = current_value
                final_array = [].push(item)
            elsif current_value == value
                final_array.push(item)
            end
        end
        final_array
    end
end