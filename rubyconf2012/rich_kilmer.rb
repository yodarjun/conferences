require 'rspec'

# rubymotion.com
# @RubyMotion
describe "RubyMotion" do
  it "eg: EverClip: clip.ignition.hk"
  it "is a complete implementation of Ruby 1.9 for iOS"
  it "except doesn't have eval"
  it "is the same as the Obj C runtime"
  it "can call C constants/libs in ruby"
  it "has full debugging support"
  it "has rspec like tests (yay!)"
  # Check out rubymine as an IDE for ruby motion: has api tab completion

  context "community" do
    it "has 500+ projects on github"
    it "has 600+ CocoaPods(?)"

    context "illustrative codebases/libraries:" do
      it "github.com/rubymotion/teacup"
      it "github.com/rubymotion/bubblewrap"
      it "github.com/clayallsopp/formotion (for form building)"
      it "github.com/adelevie/ParseModdel"
      it "github.com/opyh/motion-state-machine (like stateflow)"
    end
  end

  context "q & a" do
    it "doesn't allow debugging over tethered devices"
  end
end
