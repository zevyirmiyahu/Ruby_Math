module Even_Odd

	def Even_Odd.iseven(num)
		if (num % 2) == 0 then
			return puts "#{num} is EVEN"
		else
			return puts"#{num} is ODD"
		end
	end
end