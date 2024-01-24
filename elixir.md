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
        # Task.async(fn ->
      #   Enum.each(Process.list(), fn pid ->
      #     pid == me || allow(MockClient, me, pid)
      #   end)
      # end)
    ```


## Tests
1) By default test are asunc 
2) mix test --slowest N https://brooklinmyers.medium.com/elixir-phoenix-how-you-can-cut-test-time-by-80-with-development-specific-test-suites-f8ebdd5d0109
3) mix test --seed 119489 Find and Replicate Flaky Tests in Elixir https://blog.appsignal.com/2021/12/21/eight-common-causes-of-flaky-tests-in-elixir.html


### dynamic forms
https://dashbit.co/blog/dynamic-forms-with-phoenix

## res

- <https://gitlab.com/yan.guiborat1/cache>
  
  
  [[Phoenix]] 
  