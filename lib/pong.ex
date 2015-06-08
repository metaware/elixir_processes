defmodule Pong do

  def start do
    await(0)
  end

  def await(counter) do
    receive do
      {:ping, sender} -> send sender, {:pong, self}
    end
    IO.puts("echo received #{counter} times")
    await(counter + 1)
  end

end