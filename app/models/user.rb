class User < ApplicationRecord

  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :user_identities, dependent: :destroy

  validates_format_of :email, :without => TEMP_EMAIL_REGEX, on: :update

  def self.find_or_create_for_oauth(auth)

    identity = UserIdentity.find_or_initialize_for_oauth(auth)

    verified_email = auth.info.email if auth.info.email && (auth.info.verified || auth.info.verified_email || auth.extra.raw_info.email_verified)
    user = User.where(:email => verified_email).first if verified_email

    if user.nil? # new registration
      user = User.new(
        name: auth.extra.raw_info.name,
        email: verified_email ? verified_email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
        password: Devise.friendly_token[0,20]
      )
      user.skip_confirmation!
    end

    user.user_identities << identity if identity.new_record?

    user.save!
    user
  end

end
