class Timer
  
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

  def seconds
  	@seconds
  end

  def time_string
  	if @seconds == 0
  		"00:00:00"
  	else
  		if @seconds < 60
  			"00:00:#{@seconds}"
  		else
     		hours_check = 3600
  			hours = 0
  		  	while hours_check < @seconds
  				hours += 1
  				hours_check += 3600
  			end
  			@seconds -= 3600*hours
   			seconds_check = 60
  			minutes = 0
  			while seconds_check < @seconds
  				minutes += 1
  				seconds_check += 60
  			end
  			@seconds -= 60*minutes		
  			if @seconds < 10
  		  		"#{'%02d' % hours}:#{'%02d' % minutes}:#{'%02d' % @seconds}"
  		  	else
  		  		"#{'%02d' % hours}:#{'%02d' % minutes}:#{@seconds}"
  		  	end
  		end
  	end
  end
end

@timer = Timer.new

@timer.seconds = 4000
@timer.time_string