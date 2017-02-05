require 'rails_helper'

RSpec.describe SubjectItemNote do
  describe 'validations' do
    it { is_expected.to validate_presence_of :student_id }
    it { is_expected.to validate_presence_of :subject_item_id }

    context 'no vaildation subject item note' do
      let(:subject_item_note) { create :subject_item_note }
      it { is_expected.to_not be_valid }
    end

    context 'vaildation subject item note' do
      let!(:student) { create :student }
      let!(:subject_item) { create :subject_item }
      let!(:subject_item_note) { create :subject_item_note, student: student, subject_item: subject_item }
      subject { build :subject_item_note, subject_item_note.attributes }

      it { is_expected.to be_valid }
    end
  end

  describe 'database columns' do
    it { should have_db_column :student_id }
    it { should have_db_column :subject_item_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
    it { is_expected.to belong_to :subject_item }
  end
end
