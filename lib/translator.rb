require 'pry'
require "yaml"
library_hash = {}

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_translate = Hash.new

  emoticons.each do |english_word, emoticon_set|
   
  emoticon_translate[english_word] = {:english => emoticon_set.first, :japanese => emoticon_set.last}
      end
    
emoticon_translate

end

def get_japanese_emoticon(path, emoticon)
  emoticon_translate = load_library(path)
   output = ""
  
  emoticon_translate.each do |word, key|
    
    
    if emoticon == key[:english]
      output = key[:japanese]
    end
    
    #key.each do |language, t_emoticon|
     # binding.pry 
    #  if key[language] == emoticon 
     #   output = t_emoticon
     # end
 
end
binding.pry 
if output != nil 
  output
else
  "Sorry, that emoticon was not found"
end 
end

def get_english_meaning
  # code goes here
end