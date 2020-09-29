class CLI 

    def call
        art
        puts " "
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
        puts "Welcome to CatBreeds!"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
        puts " "
        puts "Please enter 'breeds' to see a list of all breeds of domestic cats or 'exit' to exit."
        puts " "
        API.get_breeds
        input = gets.strip.downcase
        while input != 'exit' do
        if input == 'breeds'
            puts " "
            print_breeds
            puts " "
            puts "Please enter a breed number to see more information about your chosen breed, or 'exit' to exit."
            puts " "
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
        art
        puts " "
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
        puts "Thank you for using CatBreeds!"
        puts " "
        puts "Goodbye!"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
        puts " "
    end


    def print_breeds
        Breed.all.each_with_index do |b, i|
        puts " #{i+1}. #{b.name}"
        end
    end

    def prompt
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
    puts " "
    puts "Please enter another breed's number to see more information about your chosen breed, 'breeds' to go back to the list of breeds, or 'exit' to exit."
    puts " "
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".cyan
    end


    def print_breed(breed)
    puts " "
    puts "Name: #{breed.name}"
    puts " "
    puts "Origin: #{breed.origin}"
    puts " "
    puts "Temperament: #{breed.temperament}"
    puts " "
    puts "Description: #{breed.description}"
    puts " "
    end

    def art   
    puts " 
    _                        
    \`*-.                    
     )  _`-.                 
    .  : `. .                
    : _   '  \               
    ; *` _.   `*-._          
    `-.-'          `-.       
      ;       `       `.     
      :.       .        \    
      . \  .   :   .-'   .   
      '  `+.;  ;  '      :   
      :  '  |    ;       ;-. 
      ; '   : :`-:     _.`* ;
   .*' /  .*' ; .*`- +'  `*' 
   `*-*   `*-*  `*-*'        "
            
    end


end