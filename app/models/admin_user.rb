class AdminUser < ActiveRecord::Base
  #attr_accessible :first_name, :body
   has_and_belongs_to_many :pages
   has_many :section_edits
   has_many :sections, :through => :section_edits
  # attr_accessible :name, :position, :visible
end
