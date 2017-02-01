class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    item = SubjectItemNote.find_by(subject_item: subject_item)

    return '0.00' if item.blank?

    return '%.2f' % SubjectItemNote.average(:value)
  end

  def date_of_birth
    if student.birth_date.nil?
      "No information"
    else
      student.birth_date.strftime("%Y-%m_%d") unless student.birth_date.nil?
    end
  end
end
