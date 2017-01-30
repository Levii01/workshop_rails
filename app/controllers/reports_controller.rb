class ReportsController < ApplicationController
  before_action :authenticate_user!
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }

  def subjects
  end
end
