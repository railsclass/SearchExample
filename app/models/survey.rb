class Survey < ActiveRecord::Base
  attr_accessible :course_id, :open, :result, :title
end
