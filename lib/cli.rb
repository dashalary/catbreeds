class CLI 

def call
    API.get_breeds
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Welcome to CatBreeds!"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Please enter 'breeds' to see a list of all breeds of domestic cats or 'exit' to exit."
    puts " "
    input = gets.strip.downcase
    while input != 'exit' do
        if input == 'breeds'
            # @breeds = gets.strip.downcase 
            print_breeds
        elsif input.to_i > 0 && input.to_i <= Breed.all.length 
            breed = Breed.all[input.to_i-1]
            API.get_breed(breed)
            print_breed(breed)
            prompt 
        else
            puts "Sorry but I don't understand. Please try again."
            prompt 
        end 
        input = gets.strip.downcase 
    end
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Thank you for using CatBreeds!"
    puts "Goodbye!"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end


def print_breeds
    Breed.all.each_with_index do |b, i|
        puts " #{i+1}. #{b.name}"
    end
end

def prompt
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Enter a breed's number to see more information about your chosen breed, 'breeds' to go back to the list of breeds, or 'exit' to exit."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end


def print_breed(breed)
    puts "Name: #{breed.name}"
    puts "Temperament: #{breed.temperament}"
    puts "Description: #{breed.description}"
end








end