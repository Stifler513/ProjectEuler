n = 1
m = 1
sequence = [1]
sum = 0

while n+m < 4000000
	n = n + m
	sequence << n
	m = n + m
	sequence << m
end

puts sequence

sequence.each do |x|
	if x%2 == 0
		sum = sum + x
	end
end

puts sum
