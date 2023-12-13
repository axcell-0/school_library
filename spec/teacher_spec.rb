require_relative '../person'
require_relative '../teacher'

RSpec.describe Teacher do
  let(:teacher) { Teacher.new(35, 'John Doe') }

  describe '#initialize' do
    it 'creates a Teacher object with the given age and name' do
      expect(teacher.age).to eq(35)
      expect(teacher.name).to eq('John Doe')
    end

    it 'sets the name to "Unknown" if no name is provided' do
      teacher_without_name = Teacher.new(40)
      expect(teacher_without_name.name).to eq('Unknown')
    end
  end

  describe '#can_use_services' do
    it 'returns true' do
      expect(teacher.can_use_services).to be true
    end
  end

  describe '#to_s' do
    let(:teacher) { Teacher.new(30, 'John Doe') }

    it 'returns a string representation of the teacher' do
      teacher.specialization = 'Math'
      teacher.instance_variable_set(:@id, 123) # Update the id value
      expected_string = 'Teacher: John Doe, Age: 30, Specialization: Math, ID: 123'
      expect(teacher.to_s).to eq(expected_string)
    end
  end

  describe '#can_use_services' do
    let(:teacher) { Teacher.new(30, 'John Doe') }

    it 'returns true' do
      expect(teacher.can_use_services).to eq(true)
    end
  end
end
