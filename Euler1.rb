n = 1
sum = 0

while n < 1000
	if n % 3 == 0
		sum = sum + n
	elsif n % 5 == 0
		sum = sum + n
	end
	n = n + 1
end

puts sum