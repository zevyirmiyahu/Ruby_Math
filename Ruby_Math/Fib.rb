
# The following will determine whether a number is a fibonacci number
# If not, then it prints the fibonacci numbers less than that given number

module Fib

	FArray = Array.new # holds the fibonacci numbers
	def Fib.isfib(num) # calculates and stores the num-th fibonacci number
		index = num + 1 # index for fibonacci array
		$Gindex = index # make index global, needs to be used in other parts of this program
		$Gnum = num # make num global
		for i in 0...index
			if i == 0 then
				FArray[i] = 0 # Sets first initial value
			elsif i == 1 then
				FArray[i] = 1 # Sets second initial value
			else
				FArray[i] = FArray[i - 2] + FArray[i - 1] # Implements to rule to calculate and store
			end
		end
		
		# Checks if num is fibonacci
		isnum = false # truth value of num
		(0...index).each do |i|
			if num == FArray[i] then
				puts "#{num} IS a fibonacci number!"
				isnum = true
			end
		end
		if isnum == false then 
			puts "#{num} is NOT a fibonacci number!" 
		end

		puts "The fibonacci numbers are: "
		(0...13).each do |i|
			print "#{FArray[i]} "
		end
		print " ..."
		puts "" # prints space at end
		
	end

	def Fib.more(pick)
		
		case pick
		when "y", "Y", "yes", "Yes", "YES"
			puts "The fibonacci numbers are: "
			(0...$Gindex).each do |i|
				print "#{FArray[i]} "
			end
		when "n", "N", "no", "No", "NO" 
			puts "OK!"
		else
			puts "*Invalid choice.*"
		end	
		puts "" # prints space at end
	end
end	