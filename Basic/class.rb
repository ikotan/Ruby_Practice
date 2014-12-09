# constant
# class Japan
  # PrimeMinister = 'Shinzo Abe'
  # def self.people_saying
    # "消費税上げないで、#{PrimeMinister}さん！"
  # end
# end
# puts Japan.people_saying

# class Japan
  # prime_minister = 'Shinzo Abe'
  # def self.people_saying
    # "消費税上げないで、#{prime_minister}さん！"
  # end
# end
# Japan.people_saying

# @ = instance
class Japan
  @prime_minister = 'Shinzo Abe'

  def self.people_saying
    "消費税上げないで、#{@prime_minister}さん！"
  end
end
puts Japan.people_saying

# $ = global
# class Japan
  # $prime_minister = 'Shinzo Abe'
  # def self.people_saying
    # "消費税上げないで、#{$prime_minister}さん！"
  # end
# end
# puts Japan.people_saying


