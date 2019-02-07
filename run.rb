require_relative './environment'


# Write your code here
# notice there is nothing else here, not even a pry,
# add one if you'd like

puts "Welcome to the Youtube Searcher"

while true
  puts "Enter a keyword to search for videos:"
  input = gets.chomp

  # get_videos_from_youtube(input)
  videos = get_videos_from_youtube(input)

  num = 1
  videos.each do |video|
    puts "#{num}. #{video.title}"
    num += 1
  end

  # 1. some title
  # 1. another title
  # 1. third title

  puts "Enter the number of the video you want to play:"
  input = gets.chomp
  # whatever the user types
  # play the first video

  # Access the first video
  # binding.pry
  index_i_want = input.to_i - 1

  videos[index_i_want].open_in_browser
  # binding.pry
end

# Access the video that corresponds to the user input
# if the user types 3, we want the third video

# take the third video and open it using the #open_in_browser method

# binding.pry

#
0
