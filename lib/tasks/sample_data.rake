require 'faker' 

namespace :db do 
  desc "Fill database with sample data" 
  task :populate => :environment do 
    Rake::Task['db:reset'].invoke 
    admin = User.create!(:name => "Sean Evans",
                         :email => "sean.myrddin@gmail.com", 
                         :password => "kaoskaos", 
                         :password_confirmation => "kaoskaos") 
    admin.toggle!(:admin) 
    User.create!(:name => "Example User", 
      :email => "example@railstutorial.org", 
      :password => "foobar", 
      :password_confirmation => "foobar") 
    99.times do |n| 
      name = Faker::Name.name 
      email = "example-#{n+1}@railstutorial.org" 
      password = "password" 
      User.create!(:name => name, 
        :email => email, 
        :password => password, 
        :password_confirmation => password) 
      end 
    end 
end