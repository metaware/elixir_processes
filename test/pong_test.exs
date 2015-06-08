defmodule PongTest do

  use ExUnit.Case

  test "it responds to a pong with a ping" do
    pong = spawn_link(Pong, :start, [])
    Process.send(pong, {:ping, self}, [])
    assert_receive {:pong, ^pong}
  end

  test "it responds to multiple pings with multiple pongs" do
    pong = spawn_link(Pong, :start, [])
    Process.send(pong, {:ping, self}, [])
    assert_receive {:pong, ^pong}
    Process.send(pong, {:ping, self}, [])
    assert_receive {:pong, ^pong}
  end

end