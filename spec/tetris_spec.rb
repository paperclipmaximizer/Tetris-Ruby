require 'rspec'
require_relative '../hw6assignment'

describe MyTetris do
    it "should be a Tetris" do
        t = MyTetris.new
        expect(t).is_a? Tetris
    end
    describe "key_bindings" do
        context "when 'u' is pressed" do
        it "should have a key binding for 'u'" do
            t = MyTetris.new
            expect(t).to respond_to(:key_bindings)
        end
    end
end
end
