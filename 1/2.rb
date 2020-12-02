expenses = File.readlines('1.txt').map(&:to_i)

def find_three(expenses)
  n = 0
  while n < (expenses.length - 1)
    expenses.each do |num|
      expenses.each do |num2|
        if expenses[n] + num + num2 == 2020
          puts "#{num * expenses[n] * num2}"
          return
        end
      end
    end
    n += 1
  end
end

find_three(expenses)
