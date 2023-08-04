require 'rspec'
require_relative '../hw6assignment'

describe MyTetris do
    it "should have a rotation index" do
        t = MyTetris.new
        expect(t.root).to be_a(TkRoot)
    end
end

