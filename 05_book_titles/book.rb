class Book
# write your code here
attr_accessor :title
def title
  @title
  titleized=""
  articles = ["and", "the", "or", "a", "an", "on", "of", "in"]
  words=@title.split(" ")
  count=0
  words.each do |word|
    count+=1
    if (!articles.include? word) || (count==1)
     titleized<<word.capitalize
   else
    titleized<<word
   end
    if count!= words.length
      titleized << " "
    end
  end
  titleized
end

end
