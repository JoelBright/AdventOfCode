def calculateSafeResults(processedInput)
  safeResultsCount = 0
  processedInput.each do |key, values|
    if values.size == 1
      safeResultsCount+= 1
      next
    else
      safe = true
      direction = values[0] <=> values[1]
      if direction == 0
        next
      else
        previous = values[0]
        puts "key:#{key}, previous:#{previous}, direction:#{direction}"
        (1...values.size).each do |i|
          difference = 0;
          if direction == 1
            difference = previous - values[i]
          else
            difference = values[i] - previous
          end
          puts "key:#{key}, previous:#{previous}, value:#{values[i]}, difference:#{difference}"
          case difference
            when 3, 2, 1
              previous = values[i]
            else
              safe = false
          end
          break unless safe
        end
        safeResultsCount+= 1 if safe
      end
      puts "key:#{key}, safeResultsCount:#{safeResultsCount}"
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
      safe = true
      direction = values[0] <=> values[1]
      if direction == 0
        next
      else
        previous = values[0]
        (1...values.size).each do |i|
          difference = 0;
          if direction == 1
            difference = previous - values[i]
          else
            difference = values[i] - previous
          end
          case difference
            when 3, 2, 1
              previous = values[i]
              next
            else
              safe = false
          end
          break unless safe
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
