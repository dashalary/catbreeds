class CLI 

    def call
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Welcome to CatBreeds!"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Please enter 'breeds' to see a list of all breeds of domestic cats or 'exit' to exit."
        puts " "
        API.get_breeds
        input = gets.strip.downcase
        while input != 'exit' do
        if input == 'breeds'
            puts " "
            print_breeds
        elsif input.to_i > 0 && input.to_i <= Breed.all.length 
            breed = Breed.all[input.to_i-1]
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
    puts "Enter a breed's number to see more information about a specific breed, 'breeds' to go back to the list of breeds, or 'exit' to exit."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end


    def print_breed(breed)
    puts " "
    puts "Name: #{breed.name}"
    puts " "
    puts "Temperament: #{breed.temperament}"
    puts " "
    puts "Description: #{breed.description}"
    puts " "
    end








end