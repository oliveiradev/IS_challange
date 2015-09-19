require 'rails_helper'

RSpec.describe Course, :type => :model do
  it{expect(subject).to validate_presence_of(:name)}
  it{expect(subject).to validate_presence_of(:description)}
  it{expect(subject).to have_many(:classrooms)}
  it{expect(subject).to have_many(:students)}


  it 'has a valid factory' do
    expect(build(:course)).to be_valid
  end

  context 'is invalid' do
    it 'without name' do
      course = build(:course , name: nil)
      course.valid?
      expect(course.errors[:name]).to include("não pode ficar em branco")
    end

    it 'without description' do
      course = build(:course , description: nil)
      course.valid?
      expect(course.errors[:description]).to include("não pode ficar em branco")
    end
  end

  context 'is valid' do
    it 'without status' do
      course = build(:course , status: nil)
      expect(course.valid?).to eq(true)
    end
  end

end
