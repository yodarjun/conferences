require 'rspec'

# @noelrap
# noelrappin.com/mstwjs (RUBY_2012_25)
describe "Testing should be fun" do
  describe "what makes testing painful" do
    it "long run time"
    it "intermittent failures"
    it "bad written tests that are hard to read"
    it "big test suites become unweildy"
    it "tests can be legacy too"
    it "too much testing to abandon, not enough testing to be confident"
  end

  describe "red, green, refactor" do
    it "refactoring should also include refactoring tests"
  end

  describe "writing good tests" do
    it "give behavioural names to tests"
    it "describe tests fully"
    it "use Givens, Whens, Thens, Ands appropriately to make the test sound correct"
    it "spilt up tests so that each test is testing very small pieces"
    it "extract setup into Background/lets/before"
    it "bad to have too many objects in your setup/test"
    it "try to avoid hitting the database. use build/stubs when possible"
    it "use factories as much as possible"
    it "try avoiding the use of associations to reduce the memory footprint of instantiating an object through factories"
    it "when writing unit tests, only use objects for the current context and stub out the rest"
  end

  describe "good reads" do
    it "Avdi Grimm - Confident Ruby"
  end
end
