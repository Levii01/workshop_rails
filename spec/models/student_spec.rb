require 'rails_helper'

RSpec.describe Student do
  describe 'validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }

    context 'vaildation student' do
      let!(:student) { create :student }
      subject { build :student, student.attributes }

      it { is_expected.to be_valid }
    end

    context 'no vaildation student' do
      let!(:student) { create :student }

      it { is_expected.to_not be_valid }
    end
  end

  describe 'database columns' do
    it { should have_db_column :first_name }
    it { should have_db_column :last_name }
    it { should have_db_column :birth_date }
  end

  describe 'associations' do
    it { is_expected.to have_many :subject_items }
    it { is_expected.to have_many :subject_item_notes }
    it { is_expected.to have_many :participations }
    it { is_expected.to have_many :payments }
  end

  describe 'nested attributes' do
    it { should accept_nested_attributes_for :subject_items }
  end
end
