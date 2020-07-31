require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# Add your code here
def run(songs)
puts "Please enter a command:"
user_input = gets.strip
while user_input.downcase != "exit"
  if user_input.downcase == "help"
   help
  elsif user_input.downcase == "play"
    play(songs)
  elsif user_input.downcase == "list"
    list(songs)
  elsif user_input.downcase == "exit"
    exit_jukebox
end
end
exit_jukebox
end


def help
    #output instructions
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs)
  #ask input a song name OR track number
  puts "Please enter a song name or number:"
  song_input = gets.strip
  songs.each_with_index do |index, song|
    if song_input == (index + 1) or song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again."
    end
  end
end

def list(songs)
  #output song list
  songs.each_with_index do |index, song|
     puts "#{index + 1}. #{song}"
   end
end

def exit_jukebox
    puts "Goodbye"
end
