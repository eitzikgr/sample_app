module ApplicationHelper
	def full_title(page_title)
		base_title="Ruby on Rails Tutorial Sample App"
		
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
		
	end
	def stringvalue(value)
		"your string: #{value}"
	end
	def stringeach1(value)
		a=""
		 (1..15).each{|ioio| a+="each: #{ioio}"}
		a
	end
	def stringeach(value)
		a=""
		5.times{a+="__: "}
		a
	end
end
