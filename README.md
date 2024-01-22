# Jared Sheffer AugustTwenty Submission
## Notes and considerations

* I wrote the code in ruby since it seemed like an easy way to be able to spin up a simple program with some easy unit testing.
* I considered having some fun and adding some kind of UI but decided that it was too far outside the scope of the current requirements and time constraints

* The input from the requirements is available in the data folder as are some test data sheets I used in my unit testing to validate some scenarios I saw as being likely given the data format

* When determining the Y coordinate or depth I made it negative for the purposes of visualization and understanding.  
  Only when caluclating the final product of the depth and distance to I interpret it as a positive number
## How to execute program

```
    ruby ./src/run.rb
```
## How to run tests
```
    bundle exec rspec
```
### Requirements
--- Submarine Puzzle ---

Bam! You've found yourself teleported in a submarine, deep under the sea.

Now, you need to figure out how to pilot this thing.

It seems like the submarine can take a series of commands like forward 1, down 2, or up 3:

    forward X increases the horizontal position by X units.
    down X increases the depth by X units.
    up X decreases the depth by X units.

Note that since you're on a submarine, down and up affect your depth, and so they have the opposite result of what you might expect.
The "down" command will _increase_ your depth, and the up command _decreases_ it.

The submarine seems to already have a planned course (your puzzle input). You should probably figure out where it's going. For example:

```
forward 5
down 5
forward 8
up 3
down 8
forward 2
```

Your horizontal position and depth both start at 0. The steps above would then modify them as follows:

```
    forward 5 adds 5 to your horizontal position, a total of 5.
    down 5 adds 5 to your depth, resulting in a value of 5.
    forward 8 adds 8 to your horizontal position, a total of 13.
    up 3 decreases your depth by 3, resulting in a value of 2.
    down 8 adds 8 to your depth, resulting in a value of 10.
    forward 2 adds 2 to your horizontal position, a total of 15.
```

After following these instructions, you would have a horizontal position of 15 and a depth of 10. (Multiplying these together produces 150.)

Calculate the horizontal position and depth you would have after following the planned course. What do you get if you multiply your final horizontal position by your final depth?
