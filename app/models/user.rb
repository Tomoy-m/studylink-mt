class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recodes
  validates :name, presence: true, length: { minimum: 2 }

  GUEST_USER_EMAIL = "guest@example.com"
  def self.guest
    find_or_create_by!(email: GUEST_USER_EMAIL ) do |user|
    user.password = SecureRandom.urlsafe_base64
    user.name = "guest"
    # user.confirmed_at = Time.now 
    # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
  end

  def guest_user?
    email == GUEST_USER_EMAIL
  end

  mount_uploader :avatar, AvatarUploader
  mount_uploader :backimage, BackimageUploader
end
