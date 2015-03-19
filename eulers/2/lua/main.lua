function sum_fibs_while_lt(max)
	local sum = 0
	local prev = 1
	local curr = 1

	while (curr < max) do
		local tmp = curr
		curr = prev + curr
		prev = tmp
		if (curr % 2 == 0) then
			sum = sum + curr
		end
	end
	return sum
end

print(sum_fibs_while_lt(4000000))

