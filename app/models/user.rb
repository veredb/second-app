class User < ActiveRecord::Base


  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  status_regex = /\A[a b c d e f g]\z/

  validates :name, :presence => true,
                   :length   => { :minimum => 2, :maximum => 12 }


  validates :middle, :presence => true,
                   :length   => { :minimum => 1, :maximum => 1 }
                   

  validates :last, :presence => true,
                   :length   => { :minimum => 2, :maximum => 12 }


  validates  :email, :presence => true,
                     :format     => { :with => email_regex },
                     :uniqueness => { :case_sensitive => false }


  validates :phone, :numericality => true,
          :numericality => { :only_integer => true },
          :length       => { :minimum => 10, :maximum => 30 }
 

  validates :status, :presence => true,
                   :format   => { :with => status_regex }
end
