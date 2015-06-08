defmodule PingTest do

  use ExUnit.Case

  test "it responds to a ping with a pong" do
    ping = spawn_link(Ping, :start, [])
    Process.send(ping, {:pong, self}, [])
    assert_receive {:ping, ping}
  end

  test "it responds to multiple pings with multiple pongs" do
    ping = spawn_link(Ping, :start, [])
    Process.send(ping, {:pong, self}, [])
    assert_receive {:ping, ping}
    Process.send(ping, {:pong, self}, [])
    assert_receive {:ping, ping}
  end

end