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
  










  # Notes on `Application.compile_env/4` and `compile_env!/3` in Elixir

## Key Concepts

- `Application.compile_env/4` is used to read configuration at **compile-time**.
- It requires a `Macro.Env` (e.g., `__CALLER__`) as the first argument and is meant for use inside **macros**.
- `Application.compile_env!/3` is a simpler version that does not need a `Macro.Env` and is suitable for static module-level configurations.

---

## What You Can't Do

- You cannot use `compile_env/4` directly in a module or function without a macro.
- **Example of incorrect usage**:
    ```elixir
    @chaser_after Application.compile_env!(:kc_core, [__MODULE__, :chaser_after])
    ```

---

## Correct Usage

### Using `Application.compile_env!/3` for Static Configurations
- Use `Application.compile_env!/3` for setting module attributes or similar compile-time values.

    ```elixir
    @chaser_after Application.compile_env!(:kc_core, :chaser_after)
    ```

### Using `Application.compile_env/4` in Macros
- Use `compile_env/4` when you need dynamic configuration during macro expansion.

    **Example**:
    ```elixir
    defmacro my_macro do
      quote do
        @value Application.compile_env(__CALLER__, :my_app, :some_key, "default_value")
      end
    end
    ```

---

## When to Use Each Function

| Function                   | Usage                                     | Example                          |
|----------------------------|-------------------------------------------|----------------------------------|
| `compile_env!/3`           | Static configuration at compile-time.    | `@value Application.compile_env!(:my_app, :key)` |
| `compile_env/4`            | Dynamic configuration inside macros.     | Use with `__CALLER__`.           |

---

## Summary

- Use `Application.compile_env!/3` for straightforward configuration reads.
- Use `Application.compile_env/4` **only inside macros** to handle dynamic scenarios.

