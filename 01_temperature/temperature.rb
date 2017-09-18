#write your code here
def ftoc(degrees)
	((degrees-32) * 0.5556).to_i
end

def ctof(degrees)
	(degrees * 9.0/5.0 + 32)
end