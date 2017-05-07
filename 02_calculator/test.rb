def fac(num)
	if num == 0
		puts 0.to_s
	end
	if num == 1
		puts 1.to_s
	end
	pushed = 1
	facs = []
	while pushed <= num
		facs.push(pushed)
		pushed += 1
	end
	solution = 1
	facs.each do |factorial|
		solution = solution * factorial
	end
	puts solution
end

fac(10)