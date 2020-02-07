class UuidChecker

  def self.is_uuid_valid(content)
    result = true
    content.each do |row|

      if row[3].length != 4 || row[3] != row[3].to_i.to_s
        result = false
      end
    end
    result
  end

end
