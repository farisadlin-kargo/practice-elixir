list = IO.gets("list: ")
list = list |> String.replace("\n", "") |> String.split(" ", trim: true)

result = Enum.reduce(list, %{
    all_string: list,
    number: [],
    odd_number: [],
    even_number: [],
    non_number: []
}, fn value, acc ->
            case Integer.parse(value) do
            {int_value, ""} when rem(int_value, 2) == 1 -> 
            
            Map.merge(acc, %{
                number: acc.number ++ [value], 
                odd_number: acc.odd_number ++ [value]
            })

            {int_value, ""} when rem(int_value, 2) == 0 -> 
            Map.merge(acc, %{
                number: acc.number ++ [value], 
                even_number: acc.even_number ++ [value]
            })
            # Map.merge(map(), map())
           _ ->
            Map.put(acc, :non_number, acc.non_number ++ [value])
            # Map.put(map(), string atau atom (key), value)
            end
        end
)

IO.inspect result

searchName = IO.gets("search: ")
searchName = String.replace(searchName, "\n", "")

searchName = Enum.find_index(list, fn x -> x == searchName end)
IO.inspect searchName