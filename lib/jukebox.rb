def run(songs)

    while prompt() != "exit" do 
        case prompt()
        when "help"
            help()
            prompt()
        when "list"
            list(songs)
            prompt()
        when "play"
            play(songs)
                       
        end
    end    
    exit()        
end    

def prompt
    puts "Please enter a command:"
    input = gets.chomp
end    
def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end    

def list(songs)
    songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end 

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.strip
    if (1..9).to_a.include?(input.to_i)
        index = input.to_i - 1
        puts "Playing #{songs[index]}"  
    elsif songs.include?(input)
        puts "Playing #{input}"
    else
        puts "Invalid input, please try again"
    end              
end 


def exit_jukebox()
    puts "Goodbye"
end