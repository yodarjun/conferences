require 'rspec'

describe "Asynchronous Services" do
  context "problem" do
    it "most railse apps are becoming monolithic large apps that are becoming difficult to change"
  end

  context "asynchronous message passing patters" do
    it "use FIFO queues for message passing between services"
    it "messages should be delivered exactly once"
    it "messages should be delivered as soon as possible"
    it "has a drop of time"

    context "using redis" do
      it "caused choppy throughput"
      it "needed a large number of processes"
    end

    context "trasport service" do
      it "uses redis list as a queue"
      it "uses resque serialization"
      it "redis provides exactly-once semantics requires"
      it "provides higher and more even throughput"
      it "uses the same redis dependency"
    end

    context "event pattern" do
      it "shared stream, services publish data to the event stream and others subscribe to the event stream"
    end

    it "introduced another service for dealing with different priority messages"

    context "apache kafka" do
      it "implements a generic pub-sub service"
      it "is rewindable for data recovery"
    end
  end

  context "benefits" do
    context "scalability" do
      it "infinite horizontal scalability is usually a lie"
      it "with granular services, you can scale individual services as needed"
      it "updates to individual changes can be deployed independently"
      it "deploys are low impact because of the message layer acting as a buffer"
    end

    context "experimentation" do
      it "publishing to event streams can mitigate data silos"
      it "reduces coupling between teams"
      it "allows people to play with data without affecting production"
    end

    it "allows for failure detection and we can pause the buffer when this occurs"
  end

  context "cons" do
    context "monitoring" do
      it "message buffers are not infinite so this should be closely monitored"
      it "look for QoS = timeof message exited - timeof message arrived"
      it "QUEUE size (LLEN) * 0 queue size doesn't always indicate failure"

      context "delivery guarantee" do
        it "messages can be delivered, at least once, at most once, or none at all"
        it "delivery mechanisms should be determined by business requirements"
      end

      context "failure modes" do
        it "define behavior of the system when a component of the service fails"
        it "avoid cascading failure"
        it "consider what happens if redis is unavailable or memory runs out"
      end

      context "durability (how long can failure be sustained)" do
        it "redis isnt very durable by default"
        it "message loss is possible"
        it "kafka doesn't acknowledge produced messages"
      end
    end
  end

  context "learnings" do
    it "amazon went a long way as a monolothic app, so you have to identify when you have to move to a ASOA"
    it "messaging is one tool/pattern for building SOA systems"
    it "backgrounded work is a prime candidate for service extraction"
    it "there are always trade-offs to realize benefits"
    it "is difficult to test full integration testing across services"
    it "bends the system, but should not break the system on failure"
    it "you need to measure things or you wont know how broken something possibly is"
    it "look at data as percentile slices rather than in average"
    it "you will experience system failures before you build resilience into the system"
    it "failure free operations require experience with failure"
    it "prefer smaller building blocks like kafka and redis over rabbitmq"
    it "focus testing on interfaces between systems"
    it "there's more than one way to handle this"
  end

  it "github.com/groupme/pace"
end
