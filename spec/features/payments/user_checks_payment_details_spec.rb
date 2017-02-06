require 'spec_helper'

feature 'User checks payments details' do
  let!(:student) { create :student, first_name: 'Dave', last_name: 'Grohl' }
  let!(:payment) { create :payment, student: student}

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
    find(:xpath, "//a[@title='show']").click
  end

  scenario do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Payments » Dave Grohl'
    end
  end
end
