require 'spec_helper'

kafka_hosts.each do |host|
  describe host(host) do
    # ping
    it { should be_reachable }
    # tcp port 22
    it { should be_reachable.with( :port => 22 ) }
    # tcp port 9092
    it { should be_reachable.with( :port => 9092 ) }
    it { should be_resolvable }
  end
end

zookeeper_hosts.each do |zk_host|
  describe host(zk_host) do
    # ping
    it { should be_reachable }
    # tcp port 22
    it { should be_reachable.with( :port => 22 ) }
    # tcp port 2181
    it { should be_reachable.with( :port => 2181 ) }
    it { should be_resolvable }
  end
end
