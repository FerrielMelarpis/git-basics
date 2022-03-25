numbers = [4, 5, 3, -7, 20, 0, 5]
number = 3

for index in (0...numbers.length)
    if numbers[index] == number then
        puts "Found in array"
        break
    end
end