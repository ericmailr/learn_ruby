#write your code here
def translate(string)
  vowels = ["a","e","i","o","u"]
  pig_version=""
  words = string.split(" ")
  count = 0;
  words.each do |word|
    count+=1
    if vowels.include? word[0].downcase
      pig_version << (word + "ay")
      
    elsif (!vowels.include? word[1]) && (!vowels.include? word[2]) || (word[1..2]=="qu")
      pig_version << (word[3..word.length] + word[0..2].downcase + "ay")
    elsif (!vowels.include? word[1]) || (word[0..1]=="qu")
      pig_version << (word[2..word.length] + word[0..1].downcase + "ay")
    else
      pig_version << (word[1..word.length] + word[0].downcase + "ay")
    end
    if count!=words.length
      pig_version<<" "
    end
  end
  pig_version
end