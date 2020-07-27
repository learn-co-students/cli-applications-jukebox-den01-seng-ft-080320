def get_input
  gets.strip
end

def prompt_user
  puts "Please enter a song name or number:"
end

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
  end
end

def play(songs)
  i = 0
  prompt_user
  input = get_input
  songs.each_with_index do |song, index|
    if input == song || input.to_i  == index + 1
      puts "Playing #{song}"
      i += 1
    end
  end
  if i == 0 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
i = 0 
while i < 1 do 
  puts "Please enter a command:"
  input = gets.strip
    if input == "help"
      help 
    end
    if input == "list"
      list(songs)
    end
    if input == "play"
      play(songs)
    end
    if input == "exit"
      exit_jukebox
      i += 1 
    end
  end
end




