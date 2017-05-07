#write your code here

def add(num1,num2)
	sum = num1 + num2
end

def subtract(num1, num2)
	subt = num1 - num2
end

def sum(array)
	sum1 = 0
	array.each do |number|
		sum1 += number
	end
	sum1
end

def mult(array)
	answer = 1
	array.each do |multiples|
		answer = answer * multiples
	end
	answer
end

def power(num, exp)
	num**exp
end

def fac(num)
	if num == 0
		return 0
	end
	if num == 1
		return 1
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
	solution
end