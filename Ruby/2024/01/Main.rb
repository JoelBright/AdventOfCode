def readAndSortListsIn(fileName)
  firstArray = [];
  secondArray = [];
  # Open the file and read it line by line
  File.foreach(fileName) do |line|
      break if line.empty?
      values = line.split(/\s+/)
      firstArray << values[0].to_i
      secondArray << values[1].to_i
  end
  # print firstArray
  # print secondArray

  return firstArray, secondArray
end

def calculateTotalDistance(list1, list2)
  requiredTotal = 0;

  list1.each_with_index do |x, index|
    y = list2[index]
    distance = x - y
    # puts "x:#{x}, y:#{y} thus, distance at index #{index} is =#{distance}"
    requiredTotal +=  distance.abs
  end

  return requiredTotal
end

def calculateSimilarityScore(list1, list2)
  requiredScore = 0
  list1.each_with_index do |x, index|
    countOfX = list2.count { |e| e == x }
    requiredScore += countOfX * x
    # puts "x:#{x}, countOfX:#{countOfX} thus, requiredScore is now =#{requiredScore}" if (countOfX > 0)
  end

  return requiredScore
end

selection = gets.chomp
fileName =  case selection
            when "2"
              "Input.txt"
            when "3"
              "Test.txt"
            else
              "Example.txt"
            end

puts "Running #{fileName}"

firstArray = [];
secondArray = [];
firstArray, secondArray = readAndSortListsIn(fileName)

puts "The required total distance answer for part 1:#{calculateTotalDistance(firstArray, secondArray)}"
puts "The required similarity score answer for part 2:#{calculateSimilarityScore(firstArray, secondArray)}"
