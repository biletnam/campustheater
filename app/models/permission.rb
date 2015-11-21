class Permission < ActiveRecord::Base
	belongs_to :show
	belongs_to :person

	validates_columns :level, :person_id
	attr_accessible :level, :person_id, :show_id

  def global?
    show_id.nil?
  end
end