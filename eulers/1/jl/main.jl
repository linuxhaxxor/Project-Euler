function sum_ints_divis_by_3_or_5(n::Int)
	is_divis_by_3_or_5 = x -> x % 3 == 0 || x % 5 == 0
	return sum(filter(is_divis_by_3_or_5, 1:n))
end

println(sum_ints_divis_by_3_or_5(999))

