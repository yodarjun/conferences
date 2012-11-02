require 'rspec'

# @mperham
# mperham@gmail.com
describe "Async processing for fun and profit" do
  describe "how to do async calls" do
    it "async(Class, :method, args)"

    describe "tips" do
      context "small stateless messages" do
        it "database holds object not the queue, so dont pass instances in"
        it "keep arguments simple so you can debug easily"
      end

      context "idempotent" do
        it "running the same task multiple times should not harm data"
        it "transactional: design jobs to handle retrying"
      end

      context "embracing concurrency" do
        it "resque/DJ = 4workers"
        it "Sidekiq = 100 workers"
        it "use connection_pool gem to limit client connections"
        it "try splitting work into small batches; ie 100 jobs = 10 workers with 10 jobs each"
        it "cocaine, typheuos"
      end
    end
  end

  describe "Sidekiq" do
    it "like resque but 10x faster because of multithreading"
    it "does concurrency using threads"
    it "stores data on redis"
    it "hooks into the middleware"
    it "has a nicer UI with version 2.5"
    it "has APIs for managing queues and retries"
    it "will support rails 4"

    context "pro features" do
      it "notifies on completion of a batch of jobs"
    end
  end
end
