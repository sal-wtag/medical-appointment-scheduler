# frozen_string_literal: true

class JwtService
  SECRET = Rails.application.secrets.secret_key_base
  ALGORITHM = 'HS256'

  def self.encode(payload)
    JWT.encode(payload, SECRET, ALGORITHM)
  end

  def self.decode(token)
    JWT.decode(token, SECRET, true, algorithm: ALGORITHM).first
  end
end