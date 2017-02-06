require 'spec_helper'

feature 'User deletes student' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Abacki' }
  let!(:payment) { create :payment, student_id: student.id }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
  end

  scenario do
    find(:xpath, "//a[@title='delete']").click
    expect(page).to have_content 'Payment has been deleted!'
    expect(page).to have_no_content 'Jan'
  end
end
