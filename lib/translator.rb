require 'pry'
require 'yaml'

Error_message = "Sorry, that emoticon was not found"

def load_library(file_path)
 lib = YAML.load_file(file_path)
 emoticon_lib = {"get_meaning" => {}, "get_emoticion" => {} }
 lib.each do |meaning, emoticons|
   emoticon_lib["get_meaning"][emoticons[1]] = meaning
   emoticon_lib["get_emoticion"][emoticion[0]] = emoticion
 end
 emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
