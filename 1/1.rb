expenses = File.readlines('1.txt').map(&:to_i)

def find_two(expenses)
  n = 0
  while n < (expenses.length - 1)
    expenses.each do |num|
      if expenses[n] + num == 2020
        puts "#{num * expenses[n]}"
        return
      end
    end
    n += 1
  end
end

find_two(expenses)
