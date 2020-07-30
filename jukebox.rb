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

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end 

def play(songs)
    puts "Please enter a song name or number:"
    response = gets.strip
    if response.to_i >=1 && response.to_i <= songs.count
        puts "Playing #{songs[response.to_i - 1]}" 
    elsif songs.include?(response)
        puts "Playing #{songs.find{|song| song == response}}"
    else
        puts "Invalid input, please try again"
    end 
end 

def list(songs)
    songs.each.with_index(1) do |song, index|
        puts "#{index}. #{song}"
    end
end 

def exit_jukebox
    puts "Goodbye"
end 

def run(songs)
    #while true do
    puts "Please enter a command:"
    command = gets.strip
    #case command
    if command == 'exit'
        exit_jukebox
        #break 
    elsif command == 'play'
        play(songs)
        #break 
    elsif command == 'help'
        help
        #break 
    elsif command == 'list'
        list(songs) 
        #break 
    else 
        puts "Invalid entry" 
    end 
end
