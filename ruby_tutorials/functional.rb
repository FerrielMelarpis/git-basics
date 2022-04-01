# input: a CSV of strings that represent the skills
# e.g. Python,Ruby,Git
# Invalid skills are assumed to be weighted to zero
# output:
# coding_skill_score: number -> total weight of skills of a user
# remaining_skills: hash

# DataStructure problem

# Input problem
def get_input
  puts "What are your skills?"
  input = gets.chomp
  
  # Python,Ruby,Git
  # ["Python", "Ruby", "Git"]
  skills = input.split(',')
  return skills
end

# sanitization problem
def sanitize_input(skill_weight_map, input)
  map = skill_weight_map
  input.each do |skill|
    if !map.include?(skill) then
      input.delete(skill)
    end
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
def get_skill_score(skill_weight_map, input)
  skill_score = 0
  input.each do |skill|
    weight = skill_weight_map[skill]
    skill_score += weight
  end

  return skill_score
end

# Given a skill weight map and an array of skill strings,
# this function will return a new map excluding the skills 
# that are already provided by the user
def get_remaining_skills(skill_weight_map, input)
  filtered_map = {}
  skill_weight_map.each do |key, value|
    if !input.include?(key) then
      filtered_map[key] = value
    end
  end

  return filtered_map
end

# This function prints the key-value pair of a map
def print_map(map)
  map.each do |key, value|
    puts "#{key}: #{value}"
  end
end
  
def main
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
  input = get_input() # Ruby, Python, Test
  sanitize_input(skill_weight_map, input)
  score = get_skill_score(skill_weight_map, input)
  remaining_skills_map = get_remaining_skills(skill_weight_map, input)

  # output display
  puts "Your coding skill score is #{score}"
  puts "These are the skills that you may want to learn to improve your coding skill score"
  print_map(remaining_skills_map)
end

main()