class Guideline < ActiveRecord::Base
  validates :title, presence:true, uniqueness:true
  validates :content, presence:true
  validates :posted_at, presence:true
  validates :guideline_type, presence:true

  scope :guideline_for_school, -> { where(:guideline_type => "School") }
  scope :guideline_for_central_services, -> { where(:guideline_type => "Central Services") }
  scope :guideline_for_auxiliary, -> { where(:guideline_type => "Auxiliaries") }
  scope :guideline_for_capex, -> { where(:guideline_type => "CAPEX") }
end
