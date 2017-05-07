#write your code here

def echo(text)
	text
end

def shout(text)
	text.upcase
end

def repeat(text,n=2)
	placeholder = ""
	n.times do 
		placeholder += text + " "
	end
	placeholder.rstrip
end

def start_of_word(text,n=0)
	n -= 1
	text[0..n]
end

def first_word(text)
	first = text.split
	first[0]
end

def titleize(text)
	#final = text.split.map{|words| words.capitalize}.join(" ")
	final = text.split
	final.each do |words|
		if words == "and" or words == "over" or words == "the"
			words.downcase!
		else
			words.capitalize!
		end
		final[0].capitalize!
	end
	final.join(" ")

end