require 'rspec'

describe "Bundler vs Rubygems" do
  it "bundler 1.0 was very slow"
  it "bundler 1.1 in conjunction with rubygems.org built a faster way of retreiving gems through an api"
  it "october 2012 rubygems.org goes down because of load"
  it "learning from mistakes, new api on heroku"

  context "new api with a lot more measuring for analytics" do
    it "uses librato - for metrics (graphs)"
    it "uses papertrail - for logs"

    context "discoveries from analytics" do
      context "postgres is fast" do
        it "95 percentile response time was a lot longer than median response time"
      end

      it "big postgres is way faster"

      context "redis caching is slow (???)" do
        it " - because of gemfiles not being the same so cache hits were extremely low"
      end

      context "threading is great" do
        it "puma is a multi-threaded webserver but has some issues with deadlocks so not so optimal"
        it "used thin instead"
      end

      it "metrics are tricky"
      it "capacity is tricky"

      context "response time is all lies" do
        it "requests have to go through multiple layers to get served and a lot of it is not captured by analytics tools"
        it "created an external app to make requests and capture the time for analytics (check from outside)"
      end
    end
  end

  context "synchronizing is really hard" do
    it "syncing between rubygems.org and bundler is really hard and slow"
    it "required a lot of memory and it started crashing processes"
    it "rubygems provided webhooks for synchronizing"
    it "webhooks are unreliable"
    it "now uses a hybrid of webhooks and cron syncing"
  end
end
