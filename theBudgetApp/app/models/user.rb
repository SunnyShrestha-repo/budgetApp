class User < ActiveRecord::Base
    attr_accessible :fname, :lname, :email, :username, :password
end