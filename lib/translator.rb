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
  emoticon_translate.each do |word, key|
    key.each do |language, t_emoticon|
      if emoticon == t_emoticon 
        p 
  binding.pry
end
end
end

def get_english_meaning
  # code goes here
end