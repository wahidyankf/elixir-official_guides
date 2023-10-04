# ---
# basic types
# ---

# integer
IO.puts(1)
# integer
IO.puts(0x1F)
# float
IO.puts(1.0)
# atom/symbol
IO.puts(:atom)
# string
IO.puts("elixir")
# list
IO.puts([1, 2, 3])
# tuple
IO.inspect({1, 2, 3})

IO.puts("---")

# ---
# using functions
# ---

# res: 5
IO.puts(div(10, 2))
# res: 5
IO.puts(div(10, 2))
# res: 1
IO.puts(rem(10, 3))

# ---
# anonymous functions
# ---

IO.puts("---")

add = fn a, b -> a + b end

add.(1, 2) |> IO.puts()
is_function(add) |> IO.puts()

# ---
# linked list
# ---

IO.puts("---")

list = [1, 2, 3, true, 5]

# res: [1, 2, 3, true, 5]
list |> IO.inspect()
# res: 5
list |> length() |> IO.puts()

# res: 1
hd(list) |> IO.puts()

tl(list) |> IO.inspect()

# res: [1, 2, 3, true, 5, 6, 7, 8]
(list ++ [6, 7, 8]) |> IO.inspect()

# ---
# tuples
# ---

IO.puts("---")

tuple = {:ok, "hello"}

# res: {:ok, "hello"}
tuple |> IO.inspect()

# res: {:ok, "world"}
put_elem(tuple, 1, "world") |> IO.inspect()

# res: hello
elem(tuple, 1) |> IO.puts()
