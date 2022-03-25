numbers = [4, 5, 3, -7, 20, 0, 5]
number = 2


index = 0
while index < numbers.length
    if numbers[index] == number then
        puts "Found in array"
        break
    end

    index = index + 1
    if index == numbers.length then
        puts "Not found in array"
    end
end