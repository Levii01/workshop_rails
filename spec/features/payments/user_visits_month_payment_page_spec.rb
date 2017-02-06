require 'spec_helper'

feature 'User visits students page'  do
  let!(:student_1) { create :student, first_name: 'Jan' }
  let!(:student_2) { create :student, first_name: 'Adam' }
  let!(:student_3) { create :student, first_name: 'Geralt' }
  let!(:payment_1) { create :payment, student_id: student_1.id, payment_date: Date.today - 1.month }
  let!(:payment_2) { create :payment, student_id: student_2.id, payment_date: Date.today }
  let!(:payment_3) { create :payment, student_id: student_3.id, payment_date: Date.today }


  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payment_month_path
  end

  scenario 'should see all payment list' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Payments'
    end

    expect(page).to have_content 'Adam'
    expect(page).to have_content 'Geralt'
  end

  scenario 'only when sign in' do
    logout
    visit students_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
