defmodule Ping do

  def start do
    await
  end

  def await do
    receive do
      {:pong, sender} -> send sender, {:ping, self}
    end
    await
  end

end