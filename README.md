# Tetris-Ruby
A ruby challenge


The objective of this project was to create an 'enhanced' tetris game in ruby.

I decided to use unittesting for this project with rspec.

## Installation
```bash
bundle install --path .bundle
bundle init
```
Then add the rspec gem to your gemfile
```ruby
gem 'rspec'
```
For ease of use, back in the terminal we can generate a binary for rspec-core. This prevents us from have to run the executable every time we want to use rspec.
```bash
bundle binstubs rspec-core
```
- Note that the official documented method in the rspec for generating binstubs names an older method for generating binstubs
initialize rspec
```bash
bin/rspec --init
```
This creates a new spec_helper file directory and an .rspec file. The .rspec configuration file that just contains a tag for the spec_helper. The spec_helper file is ruby code that does some config and setup for rspec.

We are now ready to create our first test.

## Creating tests with rspec
Create a new file `piece_spec.rb` in `/spec`
```bash
vim /spec/piece_spec.rb
```
and write the first test
```ruby
require 'hw6assignment.rb'
RSpec.describe MyTetris, do
    context "after pressing U key" do
    it 'rotates tetrino 90 degrees clockwise' do
        ...
        expect(proc (@board.rotate_clockwise)).to
    end
end
```
If we were to run this we would get a "pending spec". A pending spec can help map out some behaviour of a class before writing code.
We can run this test with in the terminal with `bin/rspec`. If we do, we see that our spec has no block.


## Problem 1
In your game, the player can press the ’u’ key to make the piece that is falling rotate 180 degrees.
Since the method keybindings passes object @board.rotate_clockwise directly we can access it the same way.

 Right off the bat I had trouble testing the rotate_clockwise method. I was getting an error that said "undefined method 'rotate_clockwise' for nil:NilClass". I was able to fix this by adding a new instance variable to the initialize method.

 ## Problem 2
 Enhancement two is to add 3 new pieces to the game. The first piece is a small L, the second is a 1x5 line, and the third is a 3x2 L shape.

 I added these new shapes by concatenating with the existing shapes. I also added a new method to the Piece class called 'next_piece' that returns a random piece from the array of pieces. I then had to make calls to store_current to store the current piece and next_piece to get the next piece. I also had to add a new instance variable to the initialize method to store the next piece. Finally, I added a set_board that shadows the provided set_board method to set the next piece. and a store_current shadowing the same function in the provided code.

## Run
to run
```bash
ruby hw6runner.rb
```
