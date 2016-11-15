class GuidelinesController < ApplicationController 

  def school_guidelines
    @guidelines = Guideline.guideline_for_school
  end

  def central_services_guidelines 
    @guidelines = Guideline.guideline_for_central_services
  end

  def auxiliary_guidelines 
    @guidelines = Guideline.guideline_for_auxiliary
  end

  def capexes 
    @guidelines = Guideline.guideline_for_capex
  end
end
