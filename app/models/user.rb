class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum funeral_wishes:  { do: 0, do_not: 1 }
  enum funeral_form:    { general_funeral: 0, family_funeral: 1, mourner: 2 }
  enum ashes:           { grave: 0, ossuary: 1, home:2, scattered_bones:3, others:4 }
  enum posthuomus_name: { つける: 0, つけない: 1 }
  enum belongings:      { 処分する: 0, 遺族に任せる: 1}

  has_many :emotions
  has_many :friends
end
