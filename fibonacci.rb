#This code implements the fibonacci sequence
def fibonacci(number=0)
  return number if (0..1).include? number
  return (fibonacci(number-1) + fibonacci(number-2))
end

def main
  puts "********** Fibonacci Sequence Tool ************\n\n"
  puts "Please enter a number to calculate the Fibonacci"
  begin
    number = gets.chomp
    number = number.to_i
  rescue Exception => e
    puts "You should enter a number"
    retry
  end
  puts fibonacci(number)
end

main
