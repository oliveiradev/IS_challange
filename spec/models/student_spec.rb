require 'rails_helper'

RSpec.describe Student, :type => :model do
  it{expect(subject).to validate_presence_of(:name)}
  it{expect(subject).to validate_presence_of(:register_number)}
  it{expect(subject).to have_many(:classrooms)}
  it{expect(subject).to have_many(:courses)}

  it 'has a valid factory' do
    expect(build(:student)).to be_valid
  end

  context 'is invalid' do
    it 'without name' do
      student = build(:student , name: nil)
      student.valid?
      expect(student.errors[:name]).to include("não pode ficar em branco")
    end

    it 'without register_number' do
      student = build(:student , register_number: nil)
      student.valid?
      expect(student.errors[:register_number]).to include("não pode ficar em branco")
    end
  end

  context 'is valid' do
    it 'without status' do
      student = build(:student , status: nil)
      expect(student.valid?).to eq(true)
    end
  end

end
