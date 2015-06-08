elixir_processes
===============

```elixir
➜ iex -S mix
Erlang/OTP 17 [erts-6.3.1] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Interactive Elixir (1.0.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> ping = spawn_link(Ping, :start, [])
#PID<0.84.0>

iex(2)> pong = spawn_link(Pong, :start, [])
#PID<0.86.0>

iex(3)> send(pong, {:ping, ping})
ping received 0 times
ping received 1 times
ping received 2 times
ping received 3 times
ping received 4 times
....
```