require 'rspec'
require 'triangle'

describe 'Triangle' do
  let(:triangle) { Triangle.new(5,6,7)}

  describe '#initialize' do
    it 'it has a readable side1' do
      expect(triangle.side1).to eq 5
    end
    it 'it has a readable side2' do
      expect(triangle.side2).to eq 6
    end
    it 'it has a readable side3' do
      expect(triangle.side3).to eq 7
    end
  end
  describe '#triangle-tracker' do
    it 'it will return the string Scalene' do
      expect(triangle.triangle_tracker).to eq "Scalene"
    end
    it 'it will return the string Equilateral' do
      triangle2 = Triangle.new(5,5,5)
      expect(triangle2.triangle_tracker).to eq "Equilateral"
    end
    it 'it will return the string Isosceles' do
      triangle2 = Triangle.new(5,6,6)
      expect(triangle2.triangle_tracker).to eq "Isosceles"
    end
  end
end
