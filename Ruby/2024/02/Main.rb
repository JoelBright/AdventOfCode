def isSafeCheck(list)
  direction = list[0] <=> list[1]
  if direction == 0
    return false
  else
    previous = list[0]
    (1...list.size).each do |i|
      difference = 0;
      if direction == 1
        difference = previous - list[i]
      else
        difference = list[i] - previous
      end
      case difference
        when 3, 2, 1
          previous = list[i]
        else
          return false
      end
    end
  end
  return true
end

def calculateSafeResults(processedInput)
  safeResultsCount = 0
  processedInput.each do |key, values|
    if values.size == 1
      safeResultsCount+= 1
      next
    else
      safeResultsCount+= 1 if isSafeCheck values
    end
  end
  return safeResultsCount
end

def calculateSafeResultsWithDamper(processedInput)
  safeResultsCount = 0
  processedInput.each do |key, values|
    if values.size == 1
      safeResultsCount+= 1
      next
    else
      if isSafeCheck values
        safeResultsCount+= 1
        next
      else
        safe = false
        # implimenting damper
        (0...values.size).each do |i|
          dampenedList = values[0...i] + values[(i + 1)..-1]
          if isSafeCheck dampenedList
            safe = true
          end
          break if safe
        end
        safeResultsCount+= 1 if safe
      end
    end
  end
  return safeResultsCount
end

def readAndStoreListsIn(fileName)
  listHash = Hash.new
  File.foreach(fileName).each_with_index do |line, index|
    break if line.strip.empty?
    values = line.split(/\s+/)
    listHash[index] = []
    values.each do |value|
      listHash[index] << value.to_i
    end
    puts "listHash[#{index}]:#{listHash[index]}"
  end

  return listHash
end

puts "Hi, select the file to run:\n 1-Example.txt\n 2-Input.txt\n 3-Test.txt"
selection = gets.chomp
fileName = case selection
when "2"
  "Input.txt"
when "3"
  "Test.txt"
else
  "Example.txt"
end
puts "Selected file:#{fileName}"

processedInput = readAndStoreListsIn(fileName)

puts "Answer for part 1, the number of safe results:#{calculateSafeResults(processedInput)}"
puts "Answer for part 2, the number of safe results with damper:#{calculateSafeResultsWithDamper(processedInput)}"
