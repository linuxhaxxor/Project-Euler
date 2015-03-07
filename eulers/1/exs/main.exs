is_divis_by_3_or_5 = fn(x) -> rem(x, 3) === 0 or rem(x, 5) === 0 end

0..999
|> Enum.filter(is_divis_by_3_or_5)
|> Enum.reduce(0, &+/2)
|> IO.puts

