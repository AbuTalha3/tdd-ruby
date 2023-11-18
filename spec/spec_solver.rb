require './solver'

describe Solver do
  describe '#factorial' do
    it 'should return error if number is negative' do
      solve = Solver.new
      expect { solve.factorial(-2) }.to raise_error(ArgumentError)
    end

    it 'should return 1 when number is 0' do
      solve = Solver.new
      expect(solve.factorial(0)).to eq(1)
    end

    it 'should return 120 if number is 5' do
      solve = Solver.new
      expect(solve.factorial(5)).to eq(120)
    end
  end

  describe '#reverse' do
    it 'should return olleh if input word is hello' do
      reversed = Solver.new
      result = reversed.reverse('hello')
      expect(result).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'return "fizz" when divisible by 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end
    it 'return "buzz" when divisible by 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end
    it 'return "fizzbuzz" when divisible by 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'return the number if it is not divisible by 3,5' do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
