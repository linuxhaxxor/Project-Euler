function sumIntsDivisBy3or5(x)
	local sum = 0
	for i = 1, x, 1 do
		if i % 3 == 0 or i % 5 == 0 then
			sum = sum + i
		end
	end
	return sum
end

print(sumIntsDivisBy3or5(999))
