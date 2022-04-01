# input: a CSV of strings that represent the skills
# e.g. Python,Ruby,Git
# Invalid skills are assumed to be weighted to zero
# output:
# coding_skill_score: number -> total weight of skills of a user
# remaining_skills: hash

# Input problem
puts "What are your skills?"
input = gets.chomp

# Python,Ruby,Git
# ["Python", "Ruby", "Git"]
skills = input.split(',')

# DataStructure problem

# - Python (1)
# - Ruby (2)
# - Bash (4)
# - Git (8)
# - HTML (16)
# - TDD (32)
# - CSS (64)
# - JavaScript (128)
skill_weight_map = {
  'Python' => 1,
  'Ruby' => 2,
  'Bash' => 4,
  'Git' => 8,
  'HTML' => 16,
  'TDD' => 32,
  'CSS' => 64,
  'JavaScript' => 128,
}

# sanitization problem
skills.each do |skill|
  if !skill_weight_map.include?(skill) then
    skills.delete(skill)
  end
end

# validation problem
# skills.each do |skill|
#   if !skill_weight_map.include?(skill) then
#     puts "Your input: #{skill} is invalid"
#     raise "Invalid Input"
#   end
# end

# Output problem
skill_score = 0
skills.each do |skill|
  weight = skill_weight_map[skill]
  skill_score += weight
end

puts "Coding Skill Score: #{skill_score}"
skill_weight_map.each do |key, value|
  if !skills.include?(key) then
    puts "#{key}: #{value}"
  end
end