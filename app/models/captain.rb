class Captain < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :date_of_birth, :planet_id, :email, :password, :password_confirmation

  has_secure_password
  
  belongs_to :planet
  has_many :ships

  before_save { email.downcase! }
  before_create :create_remember_token

  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
  validates :password, length: { minimum: 6 }

  def Captain.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Captain.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = Captain.digest(Captain.new_remember_token)
    end

end
