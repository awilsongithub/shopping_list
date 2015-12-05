# Active Record is our ORM (Object Relational Mapper) to Database
require 'bcrypt'
class Account < ActiveRecord::Base

   include BCrypt #bzzzzzzzz

   # setter for password (encrypted)
   # use users pwd as parameter sent to bcrypt's Password.create method
   def password=(pwd)
      self.password_digest = BCrypt::Password.create(pwd)
   end

   # getter for password. get's encrypted version (digest)(and decrypts?)
   def password
      BCrypt::Password.new(self.password_digest)
   end

   # pass args, find user and compare entered pwd to that in table
   # this method is called when login form is posted
   def self.authenticate(user_name, password)
      # find by args: column_name: value_to_find
      current_user = Account.find_by(user_name: user_name)
      # return current user if pwds match
      if (current_user.password == password)
      return current_user
      else
         return nil
      end
   end

end
