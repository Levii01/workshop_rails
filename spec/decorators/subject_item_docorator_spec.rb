require 'rails_helper'

describe StudentDecorator do
  let(:teacher) { build :teacher, first_name: 'John', last_name: 'Smith' }
  let(:subject_item) { build :subject_item, title: 'Never ending story', teacher: teacher }
  let(:subject_item_2) { build :subject_item, title: 'Never ending story', teacher: nil }

  describe "#title_with_assigned_teacher" do
    describe "teacher is exist" do
      subject { subject_item.decorate.title_with_assigned_teacher }
      it { is_expected.to eq 'Never ending story (John Smith)' }
    end

    describe "teacher isn't exist" do
      subject { subject_item_2.decorate.title_with_assigned_teacher }
      it { is_expected.to eq 'Never ending story' }
    end
  end
end
