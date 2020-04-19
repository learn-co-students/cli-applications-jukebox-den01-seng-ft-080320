# Add your code here
require 'pry'
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
    # binding.pry
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  song_played = false
  songs.each_with_index do |song, index|
    if input == song.to_s
      song_played = true
      puts "Playing #{song}"
    elsif input == (index + 1).to_s
      song_played = true
      puts "Playing #{song}"
    end
  end
  if song_played == false
  puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  input = gets.strip
end
