require '../solver'

describe Solver do
    
    before :each do
        @error = 'Please choose a number bigger or equal to 0'
        @factorial1 = Solver.new(5)
        @factorial2 = Solver.new(-5)
        @reverse1 = Solver.new('word')
        @reverse2 = Solver.new('Welcome to microverse')
        @fizzbuzz1 = Solver.new(9)
        @fizzbuzz2 = Solver.new(20)
        @fizzbuzz3 = Solver.new(15)
        @fizzbuzz4 = Solver.new(7)
    end

    # Factorial number

    it 'is an instance of solver?' do
        expect(@factorial1).to be_instace_of Solver  
    end

    it 'returns the correct number?' do
     expect(@factorial1).to eql 120 
    end

    it 'Should return an error' do
        expect(@factorial2).to eql @error
    end


    # Reverse word
    it 'is an instance of solver?' do
        expect(@reverse1).to be_instace_of Solver  
    end

    it 'return a reverse word' do
        expect(@reverse1).to eql 'drow'
    end

    it 'return a reverse word with spaces' do
        expect(@reverse2).to eql 'esrevorcim ot emocleW' 
    end
end
