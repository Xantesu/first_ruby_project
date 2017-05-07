#write your code here

def translate(text)
	textarray = text.split
	if textarray.length == 1
		textsplit = text.scan(/\w/)
		vowels = ["a","e","i","o","u"]
		vowel = 0
		if vowels.include? textsplit[0]
			final = text+"ay"
		else
			counter = 0
			numbercons = 0
			while counter < 3
				returned = vowels.include? textsplit[counter]
				if returned == false
					numbercons += 1
					if textsplit[counter] == "q"
						numbercons += 1
					end
				elsif returned == true
					counter += 3
				end
				counter += 1
			end
			if numbercons == 1
				cons = textsplit.shift
				textsplit.push(cons)
				textsplit.push("ay")
			elsif numbercons == 2
				cons = textsplit.shift
				textsplit.push(cons)
				cons2 = textsplit.shift
				textsplit.push(cons2)
				textsplit.push("ay")
			elsif numbercons == 3
				cons = textsplit.shift
				textsplit.push(cons)
				cons2 = textsplit.shift
				textsplit.push(cons2)
				cons3 = textsplit.shift
				textsplit.push(cons3)
				textsplit.push("ay")
			end
			final = textsplit.join ("")
		end
		final
	else
		counter = 0
		final = []
		translated = ""
		while counter < textarray.length
			final.push(translate(textarray[counter]))
			counter += 1
		end
		final.join(" ")
	end
end

