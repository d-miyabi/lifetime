class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum funeral_wishes:  { する: 0, しない: 1 }
  enum funeral_form:    { 一般葬: 0, 家族葬: 1, 喪主に任せる: 2 }
  enum ashes:           { 墓: 0, 納骨堂: 1, 自宅:2, 散骨する:3, その他:4 }
  enum posthuomus_name: { つける: 0, つけない: 1 }
  enum belongings:      { 処分する: 0, 遺族に任せる: 1}

  has_many :emotions
  has_many :friends
end
