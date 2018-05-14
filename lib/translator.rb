require 'pry'
require 'yaml'

def load_library(file_path)
  lib = YAML.load_file(file_path)
  org_lib = {"get_meaning" => {}, "get_emoticon" => {}}
  lib.each do |meaning, emotes|
    org_lib["get_meaning"][emotes[1]] = meaning
    org_lib["get_emoticon"][emotes[0]] = emotes[1]
  end
  org_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
