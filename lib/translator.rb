require 'pry'
require 'yaml'
def error
'Sorry, that emoticon was not found'
end

def load_library(file_path)
  lib = YAML.load_file(file_path)
  org_lib = {"get_meaning" => {}, "get_emoticon" => {}}
  lib.each do |meaning, emotes|
    org_lib["get_meaning"][emotes[1]] = meaning
    org_lib["get_emoticon"][emotes[0]] = emotes[1]
  end
  org_lib
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  lib = load_library(file_path)
  lib["get_emoticon"].include?(english_emoticon) ? lib["get_emoticon"][english_emoticon] : error
end

def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
  lib = load_library(file_path)
  lib["get_meaning"].include?(japanese_emoticon) ? lib["get_meaning"][japanese_emoticon] : error
end
