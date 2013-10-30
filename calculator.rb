def add_numbers(first, second)
  first + second
end

def subtract_numbers(first, second)
  first - second
end

def divide_numbers(first, second)
	first / second
end

def multiply_numbers(first, second)
	first * second
end

def expo(first, second)
	first ** second
end

def square(first)
 	Math.sqrt(first)
end

puts "Who are you?"
name = gets.chomp

if name.empty?
		puts "Ok, I will call you Dave."
		name = "Dave"
else 
		puts "Hi, #{name}"
end

puts "+, -, *, /, find the exponent, or find the square root?"
if gets != "+" "-" "*" "/" "find the exponent" "find the square root"
	puts "Sorry I can't do that, #{name}"
	exit
else 
	action = gets.chomp.downcase
end

if action != "find the square root"
	puts "First number?"
	first_input = gets.chomp

		while first_input.empty?
			puts "Hey, why don't you pick a number?"
			first_input = gets.chomp
		end

		while first_input.to_i.to_s != first_input
			puts "Put in an integer (like 5 instead of five)"
			first_input = gets.chomp
		end

	first_num = first_input.to_i	
	
	puts "Second number?"
	second_input = gets.chomp

		while second_input.empty?
			puts "Hey, why don't you pick a number?"
			second_input = gets.chomp
		end
		
		while second_input.to_i.to_s != second_input
			puts "Put in an integer (like 5 instead of five)"
			second_input = gets.chomp
		end

		second_num = second_input.to_i

else
	puts "What's the number?"	
	singluar_input = gets.chomp

		while singluar_input.empty?
			puts "Hey, why don't you pick a number?"
			singluar_input = gets.chomp
		end
		
		while singluar_input.to_i.to_s != singluar_input
			puts "Put in an integer (like 5 instead of five)"
			singluar_input = gets.chomp
		end

		single_num = singluar_input.to_i
end		

if action == "+" # without chomp action is "add/n"
  result = "#{first_num} + #{second_num} = #{add_numbers(first_num, second_num)}"
elsif action == "-"
  result = "#{first_num} - #{second_num} = #{subtract_numbers(first_num, second_num)}"
elsif action == "/"
	result = "#{first_num} / #{second_num} = #{divide_numbers(first_num, second_num)}"
elsif action == "*"
	result = "#{first_num} * #{second_num} = #{multiply_numbers(first_num, second_num)}"
elsif action == "find the exponent"
	result = "#{first_num} to the power of #{second_num} = #{expo(first_num, second_num)}"
elsif action == "find the square root"
	result = "the square root of #{single_num} = #{square(single_num)}" 
else
  result = "Sorry, I don't know how to do that, #{name}."
end

puts result

