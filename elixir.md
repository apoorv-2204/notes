# Elixir Facts

## Debug-helper

1) List all pid and info

    ``` elixir
        Enum.each(Process.list(), fn pid ->
         try do
           process_info = Process.info(pid)
           links = process_info |> Keyword.get(:links, nil)
           group_leader = process_info |> Keyword.get(:group_leader, nil)
           name = process_info |> Keyword.get(:registered_name, nil)
           IO.inspect({name, pid, links, group_leader})
         rescue
           _ ->
             process_info = Process.info(pid)
             links = process_info[:links]
             group_leader = process_info[:group_leader]
             IO.inspect({nil, pid, links, group_leader})
         end
       end)
    ```


## Tests
1) By default test are asunc 