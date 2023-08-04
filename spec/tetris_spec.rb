require 'rspec'
require_relative '../hw6assignment'

describe MyTetris do
    it "should be a Tetris" do
        t = MyTetris.new
        expect(t).is_a? Tetris
    end
end
