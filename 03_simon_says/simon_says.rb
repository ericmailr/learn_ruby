#write your code here
def echo(string)
	string
end

def shout(string)
	string.upcase
end	


def repeat(string, count=2)
	string_total=string
	(count-1).times do |i|
		string_total+=" " + string
	end 
	string_total
end

def start_of_word(string, length)
	string[0..length-1]
end

def first_word(string)
	temp=""
	(string.length).times do |i|
		if (string[i]==" ")
			break
		else
			temp+=string[i]
		end
	end
	temp
end

def titleize(string)
	words = string.split(" ")
	capitalized_words = []
	little_words = ["and","of","the","or","a","an", "over"]
	words.each do |word|

		if (little_words.include? word) && (capitalized_words.length>0)
			capitalized_words.push(word)
		else
			capitalized_words.push(word.capitalize)
		end
	end
	capitalized_words.join(" ")
end

puts titleize("hey a you")