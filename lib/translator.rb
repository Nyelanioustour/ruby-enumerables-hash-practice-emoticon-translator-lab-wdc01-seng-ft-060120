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

def get_japanese_emoticon(emoticon)
  load_library(path)
  emoticon_translate
  binding.pry
end

def get_english_meaning
  # code goes here
end