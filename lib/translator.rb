# require modules here

require "yaml" 
require "pry"

def load_library(file)
<<<<<<< HEAD
  emoticons = YAML.load_file(file)
  new_hash = {:get_emoticon => {:english_emotion => {}}, :get_meaning => {:japanese_emoticon => {}}}
  emoticons.each do |key, value|

      if !new_hash[:get_meaning][:japanese_emoticon][value[1]]
        new_hash[:get_meaning][:japanese_emoticon][value[1]] = key
      end
      
      if !new_hash[:get_emoticon][:english_emotion][value[0]]
        new_hash[:get_emoticon][:english_emotion][value[0]] = key
      end
=======
  # code goes here
  emoticons = YAML.load_file(file)
  
  new_hash = {:get_emoticon => {:enlish_emotion => []}, :get_meaning => {:japanese_emoticon => []}}
  emoticons.each do |key, value|
    # if !new_hash[:get_meaning].include?(value)
    #   # new_hash[:get_meaning] << value
      
    # end
>>>>>>> 7f766199e3b3dbbf6250648e609ff236d494a2bf
  end
  # binding.pry
  new_hash
end

def get_japanese_emoticon(file_path, english_emoticon)
  # input english emoticon, outputs japanese_emoticon
  emoticonz = load_library(file_path)
  return_value = "Sorry, that emoticon was not found"
  if emoticonz[:get_emoticon][:english_emotion][english_emoticon]
     emotional_description = emoticonz[:get_emoticon][:english_emotion][english_emoticon]
  japanese_emoticon = emoticonz[:get_meaning][:japanese_emoticon].key(emotional_description)
  return_value = japanese_emoticon
  else
    return_value
  end 
  return_value
end

def get_english_meaning(file_path, japanese_emoticon)
  # code goes here input japanese_emoticon, output english_emoticon
  emoticonz = load_library(file_path)
  
  return_value = "Sorry, that emoticon was not found"
  if emoticonz[:get_meaning][:japanese_emoticon][japanese_emoticon]
     emotional_description = emoticonz[:get_meaning][:japanese_emoticon][japanese_emoticon]
  english_emoticon = emoticonz[:get_emoticon][:english_emoticon].key(emotional_description)
  return_value = english_emoticon
  else
    return_value
  end 
  return_value
  # binding.pry
end

# def load_library(file_path)
#   emoticons = YAML.load_file(file_path)
  
#   new_hash = {
#     'get_meaning' => {},
#     'get_emoticon' => {}
#   }

#   emoticons.each do |key,value|
#     new_hash['get_emoticon'][value[0]] = emoticons[key][1]
#     new_hash['get_meaning'][value[1]] = key
#   end

#   new_hash
# end

# def get_japanese_emoticon(file_path, emoticon)
#   result = load_library(file_path)['get_emoticon'][emoticon]
#   result ? result : "Sorry, that emoticon was not found"
# end

# def get_english_meaning(file_path, emoticon)
#   result = load_library(file_path)['get_meaning'][emoticon]
#   result ? result : "Sorry, that emoticon was not found"
# end
