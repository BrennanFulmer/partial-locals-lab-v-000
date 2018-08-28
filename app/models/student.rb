# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(query)
    if query.empty?
      results = self.all
    else
<<<<<<< HEAD
      results = self.where("NAME like ?", "%#{query}%")
=======
      
      results = self.all.collect do |student|
        
        if student.name && student.name.upcase.include?(query.upcase)
          student
        end
        
      end
      
>>>>>>> d911991ee8eeb803411090a27e4b954d812b424a
    end
    results.compact
  end

end
