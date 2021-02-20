require 'securerandom'

def uuid_creation
  uuid = [Array.new(8),
          Array.new(4),
          Array.new(4),
          Array.new(4),
          Array.new(12)]

  uuid.map! do |section|
    section = section.map! { |char| char = SecureRandom.alphanumeric(1) }.join
  end

  uuid.join('-')
end

p uuid_creation