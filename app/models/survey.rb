class Survey < ActiveRecord::Base
  attr_accessible :course_id, :open, :result, :title


    def self.search(search)
      if search
        where("title LIKE ?", "%#{search}%")
      else
        all
      end
    end

end
