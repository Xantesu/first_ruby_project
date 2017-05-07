class Book
# write your code here
	attr_accessor :title

	def initialize
		@title = ""
	end

	def title
		exceptions = ["the","in","and","of","a","an"]
		titlearray = @title.split
		titlearray.each do |title|
			except_check = exceptions.include? title
			if except_check == true
				title.downcase!
				expect_check_firstchar = exceptions.include? titlearray[0]
				if expect_check_firstchar == true
					title.capitalize!
				end
			else
				title.capitalize!
			end
		end
		titlearray.join(" ")
	end
end
