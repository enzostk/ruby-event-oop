class User
    attr_accessor :email , :age 
    @@all_users = []

    def initialize(email_to_save,age_to_save)
      @email = email_to_save
      @age = age_to_save
      @@all_users << self
    end

    def self.all
      @@all_users
    end

    def self.find_by_email(email)
      @@all_users.each do |user|
        
        if user.email == email
          return user
        else
          puts "Il n'y a pas d'utilisateur avec cet e-mail!"
        end
      end
    end

end