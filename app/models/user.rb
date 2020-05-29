class User < ApplicationRecord
  has_secure_password
  generate_public_uid

  def to_param
    public_uid
  end
end
