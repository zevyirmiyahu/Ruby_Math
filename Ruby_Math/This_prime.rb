# *Note* certain variables were made global incase program was expanded in future

module This_prime

	def This_prime.isprime(val)
		# This program take input from user and determines whether number is prime
		$isprime = true # boolean value also covers case of val = 2


		# **Determines primality***

		if (val == 1) then
			puts "#{val} is NOT prime"
			$isprime = false
		end

		if (val != 2) then
			for i in 2..val - 1
				if (val % i) == 0 then
					puts "#{val} is NOT prime"
					$isprime = false # change assumed truth value of Val
					break # Stops because one case is enough to prove NOT prime
				end
			end
		end

		if ($isprime == true) then
			puts "#{val} IS prime"
			if val == 2 then
				puts "2 is the smallest prime number."
				return
			end

			# Prints all primes less then val
			if val != 2 then
				puts "All the primes < #{val}: "
			end

			for k in (val).downto(2)
				$isprime = true # Reset truth value
				for j in 2..k - 1
					if (k % j) == 0 then
						$isprime = false
					end
				end
				if ($isprime == true) then
					if k != val then # Avoids double printing val in list
						puts "#{k}"
					end
				end
			end
		end
	end
end
