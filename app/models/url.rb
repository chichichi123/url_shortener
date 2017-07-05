class Url < ApplicationRecord
  validates :long_url, length: { minimum: 15 }

  def shorten
    self.short_url = SecureRandom.hex(5)
  end

  def add_http
    if self.long_url.start_with?("http://") == true
      self.long_url = self.long_url
    else
      self.long_url.insert(0, "http://")
    end
  end

end
