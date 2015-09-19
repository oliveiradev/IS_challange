require 'rails_helper'

RSpec.describe Classroom, :type => :model do
  it{expect(subject).to belong_to(:student)}
  it{expect(subject).to belong_to(:course)}
  it{expect(subject).to validate_presence_of(:course_id)}
  it{expect(subject).to validate_presence_of(:student_id)}

  it 'has a valid factory' do
    expect(build(:classroom)).to be_valid
  end

  context 'is invalid' do
    it 'without student' do
      classroom = build(:classroom , student: nil)
      classroom.valid?
      expect(classroom.errors[:student_id]).to include("não pode ficar em branco")
    end

    it 'without course' do
      classroom = build(:classroom , course: nil)
      classroom.valid?
      expect(classroom.errors[:course_id]).to include("não pode ficar em branco")
    end
  end

  context 'is valid' do
    it 'without entry_at' do
      classroom = build(:classroom , entry_at: nil)
      expect(classroom.valid?).to eq(true)
    end
  end
end
