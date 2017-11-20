require 'json'

def mad_libs(file_name)
  word_types = File.open("words.json", "r") do |f|
    JSON.parse(f.read)
  end
  story = parse_file(file_name)
  File.open("mad_lib_finished_story.txt", "w+") {|file| file.write(replace_word(word_types, story))}
  read_story("mad_lib_finished_story.txt")
end

def replace_word(word_types, story)
  temp_story = String.new(story)
  story.scan(/(adjective|adverb|verb|noun)/) do |word|  
    temp_story.insert(temp_story.index(word[0]), random_replacement(word_types, word))
    #takes the index of the word type, starts the slice at that index and ends at the lenght of the word type.
    #This will successfully remove any "adjective", etc., words that need to be replaced with 
    #the actual word.
    temp_story.slice!(temp_story.index(word[0]), word[0].length)
  end
  return temp_story
end

def random_replacement(word_types, word)
  random_number = Random.rand(word_types[word[0]].length)
  return word_types[word[0]][random_number]
end

def parse_file(file_name)
  file_contents = File.read(file_name)
  return file_contents
end

def read_story(finished_story)
  File.open(finished_story, "r") {|file| file.read}
end

puts mad_libs("madlib.txt")