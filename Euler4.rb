
def numberarray (number)
	numberarray = []
	x = (number.to_s.length - 1)
	while x >= 0
		digit = (number / (10 ** x))
		numberarray << digit
		number = (number - ((10 ** x) * digit))
		x = x - 1
	end
return numberarray
end

n = 999
m = 999
palendromes = []

while n*m > 800000
	if n == m
		m = (m - 1)
		n = 999
	else
		n = (n - 1)
	end
	numberarray = numberarray(n*m)
	x = 0
	samedigit = 0
	numberarray = numberarray((n*m).to_i)
	puts "testing..."
	puts numberarray.to_s
	while (x*2) <= numberarray.length
		if numberarray[(x)] == numberarray[(numberarray.length - x - 1)]
			samedigit = samedigit + 1
		end
		x = x + 1
	end
	if samedigit == (numberarray.length / 2 + 1)
		puts "palendrome!"
		palendromes << ([numberarray(n*m).to_s,n,m])
	end

end

puts n
puts m
puts n*m
puts palendromes