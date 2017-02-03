class User < ApplicationRecord
           acts_as_messageable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         def admin?
           is_admin
         end
         def mailboxer_email(object)
           email
         end
end
