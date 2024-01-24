Side effects are actions or processes that occur in addition to another main process.


#### In the context of react,
the main process will be component render cycle , in which the main task of a component is to render the user interface defined in component function, that returns jsx code.

An action that started upon the execution of react component function is a side effect if that action is not directly related to the main task of rendering the components user interface.

ex:
- A function rendering a component also invoking a function , sending [[HTTP]] request and retrieving   info is not directly part of rendering the UI.
- Console.log
- timers, setTimeout

Side effects are not always side effects, it also depends upon where the code is placed.The location of set of instruction determine whether its a side effect or not.Side effects may or may not cause infinite loops, it depends whether side effects change the state.

Side effects are bad when the alter the global or contextual state.Until or unless the affect main task they are not side effect.
