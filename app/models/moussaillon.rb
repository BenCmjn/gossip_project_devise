class Moussaillon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :written_gossips, class_name: 'Gossip', dependent: :destroy
  before_validation :whitelisted

  def whitelisted
  	vip_email = ["bonjour@mail.com", "felix@thp.com","charles@thp.com"]
    unless vip_email.include? email
      errors.add :email, "#{email} is not on our invitation list"  
    end
  end 
  
end
