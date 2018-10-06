begin
	continue = false
	puts ""
	puts "**The following program evaluates numerical properties**"
	puts ""
	puts "*********************************************************"
	puts "Choose an option:"
	puts ""
	puts "	1: Prime"
	puts "	2: Even or Odd"
	puts "	3: Fibonacci Number"
	print "Choice: "
	choice = gets.to_i


	case choice 

	when 1
		$LOAD_PATH<< '.'
		require 'This_prime'
		puts ("Enter an integer to determine if prime: ")
		val = gets.to_i # convert input to integer
		This_prime.isprime(val)
	when 2
		$LOAD_PATH<< '.'
		require 'Even_Odd'
		print "What integer would you like to evaluate? "
		num = gets.to_i
		Even_Odd.iseven(num)
	when 3
		$LOAD_PATH<< '.'
		require 'Fib'
		print "What integer would you like to evaluate? "
		num = gets.to_i
		Fib.isfib(num)
		puts "Would you like to see all Fibonacci numbers up [i] = #{num} ? yes = y, no = n"
		pick = gets.chomp # .chomp cuts line break at end
		Fib.more(pick)
	else 
		puts "Invalid Choice"
	end
	
	# Determine if user wants to re-run program
	puts "Do you want to run program again? y/n"
	rerun = gets.chop
  
	case rerun
	
	when "y", "Y", "yes", "Yes", "YES" 
		continue = true
	when "n", "N", "no", "No", "NO" 
		continue = false
	else 
		puts "Invalid choice"
	end
	
end while continue