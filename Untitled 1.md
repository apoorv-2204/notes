It doesn’t matter how many layers of components there are between the provider and the `Button`. When a `Button` _anywhere_ inside of `Form` calls `useContext(ThemeContext)`, it will receive `"dark"` as the value.

### Pitfall

`useContext()` always looks for the closest [[provider]] _above_ the component that calls it. It searches upwards and **does not** consider providers in the component from which you’re calling `useContext()`.

import { createContext, useContext } from 'react';
const ThemeContext = createContext(null);

export default function MyApp() {
return (
<ThemeContext.Provider value="dark">
<Form />
</ThemeContext.Provider>
)}

function Form() {

return (

<Panel title="Welcome">

<Button>Sign up</Button>

<Button>Log in</Button>

</Panel>

);

}

  

function Panel({ title, children }) {

const theme = useContext(ThemeContext);

const className = 'panel-' + theme;

return (

<section className={className}>

<h1>{title}</h1>

{children}

</section>

)

}

  

function Button({ children }) {

const theme = useContext(ThemeContext);

const className = 'button-' + theme;

return (

Show more

---

### Updating data passed via context [](https://react.dev/reference/react/useContext#updating-data-passed-via-context "Link for Updating data passed via context")

Often, you’ll want the context to change over time. To update context, combine it with [state.](https://react.dev/reference/react/useState) Declare a state variable in the parent component, and pass the current state down as the context value to the provider.

```
function MyPage() {  const [theme, setTheme] = useState('dark');  return (    <ThemeContext.Provider value={theme}>      <Form />      <Button onClick={() => {        setTheme('light');      }}>        Switch to light theme      </Button>    </ThemeContext.Provider>  );}
```

Now any `Button` inside of the provider will receive the current `theme` value. If you call `setTheme` to update the `theme` value that you pass to the provider, all `Button` components will re-render with the new `'light'` value.

#### Examples of updating context[](https://react.dev/reference/react/useContext#examples-basic "Link for Examples of updating context")

1. Updating a value via context2. Updating an object via context3. Multiple contexts4. Extracting providers to a component5. Scaling up with context and a reducer

#### 

Example 1 of 5: 

Updating a value via context [](https://react.dev/reference/react/useContext#updating-a-value-via-context "Link for this heading")

In this example, the `MyApp` component holds a state variable which is then passed to the `ThemeContext` provider. Checking the “Dark mode” checkbox updates the state. Changing the provided value re-renders all the components using that context.


import { createContext, useContext, useState } from 'react';

  

const ThemeContext = createContext(null);

  

export default function MyApp() {

const [theme, setTheme] = useState('light');

return (

<ThemeContext.Provider value={theme}>

<Form />

<label>

<input

type="checkbox"

checked={theme === 'dark'}

onChange={(e) => {

setTheme(e.target.checked ? 'dark' : 'light')

}}

/>

Use dark mode

</label>

</ThemeContext.Provider>

)

}

  

function Form({ children }) {

return (

<Panel title="Welcome">

<Button>Sign up</Button>

<Button>Log in</Button>

</Panel>

);

}

  

function Panel({ title, children }) {

const theme = useContext(ThemeContext);

const className = 'panel-' + theme;

return (