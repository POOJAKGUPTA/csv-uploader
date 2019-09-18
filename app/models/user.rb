class User < ApplicationRecord
	def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            user_hash = User.new
            user_hash.name = row[0]
            user_hash.email = row[1]
            user_hash.employee_id = row[2]
            user_hash.mobile_no = row[3]
            user_hash.save
        end
    end

    def self.to_csv(options = {})
     desired_columns = ["name", "employee_id", "email", "mobile_no"]
        CSV.generate(options) do |csv|
            csv << desired_columns
            all.each do |user|
                csv << user.attributes.values_at(*desired_columns)
            end
        end
    end
end

