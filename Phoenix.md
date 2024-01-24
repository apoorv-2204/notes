
### Request Life Cycle

The HTTP request is made of a verb and a path.Web applications typically handle requests by mapping each verb/path pair into a specific part of your application.This matching in Phoenix is done by the router.

The router maps unique HTTP verb/path pairs to controller/action pairs which will handle them. Controllers in Phoenix are simply Elixir modules. Actions are functions that are defined within these controllers.

```
get "/", PageController, :home
```

Let's digest what this route is telling us. Visiting [http://localhost:4000/](http://localhost:4000/) issues an HTTP `GET` request to the root path. All requests like this will be handled by the `home/2` function in the `HelloWeb.PageController` module defined in `lib/hello_web/controllers/page_controller.ex`.

Let's add a new route to the router that maps a `GET` request for `/hello` to the `index` action of a soon-to-be-created `HelloWeb.HelloController` inside the `scope "/" do` block of the router:

```
scope "/", HelloWeb do
  pipe_through :browser

  get "/", PageController, :home
  get "/hello", HelloController, :index
end
```


Controllers are Elixir modules, and actions are Elixir functions defined in them. The purpose of actions is to gather the data and perform the tasks needed for rendering.All controller actions take two arguments. The first is `conn`, a struct which holds a ton of data about the request. The second is `params`, which are the request parameters.

```
defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
```


The core of this action is `render(conn, :index)`. It tells Phoenix to render the `index` template. The modules responsible for rendering are called views. By default, Phoenix views are named after the controller (`HelloController`) and format (`HTML` in this case), so Phoenix is expecting a `HelloWeb.HelloHTML` to exist and define an `index/1` function.

#### A new view

Phoenix views act as the presentation layer. For example, we expect the output of rendering `index` to be a complete HTML page. To make our lives easier, we often use templates for creating those HTML pages.

```
defmodule HelloWeb.HelloHTML do
  use HelloWeb, :html
end
```

To add templates to this view, we can define them as function components in the module or in separate files.

Let's start by defining a function component:

```
defmodule HelloWeb.HelloHTML do
  use HelloWeb, :html

  def index(assigns) do
    ~H"""
    Hello!
    """
  end
end
```

[`EEx`](https://hexdocs.pm/eex/EEx.html) is a library for embedding Elixir that ships as part of Elixir itself. "HTML+EEx" is a Phoenix extension of EEx that is HTML aware, with support for HTML validation, components, and automatic escaping of values. The latter protects you from security vulnerabilities like Cross-Site-Scripting with no extra work on your part.

A template file works in the same way. Function components are great for smaller templates and separate files are a good choice when you have a lot of markup or your functions start to feel unmanageable.

Let's give it a try by defining a template in its own file. First delete our `def index(assigns)` function from above and replace it with an `embed_templates` declaration:

```
defmodule HelloWeb.HelloHTML do
  use HelloWeb, :html

  embed_templates "hello_html/*"
end
```

Here we are telling `Phoenix.Component` to embed all `.heex` templates found in the sibling `hello_html` directory into our module as function definitions.

Note the controller name (`HelloController`), the view name (`HelloHTML`), and the template directory (`hello_html`) all follow the same naming convention and are named after each other. They are also collocated together in the directory tree:

>**Note**: We can rename the `hello_html` directory to whatever we want and put it in a subdirectory of `lib/hello_web/controllers`, as long as we update the `embed_templates` setting accordingly. However, it's best to keep the same naming convention to prevent any confusion.

```
lib/hello_web
├── controllers
│   ├── hello_controller.ex
│   ├── hello_html.ex
│   ├── hello_html
|       ├── index.html.heex
```

A template file has the following structure: `NAME.FORMAT.TEMPLATING_LANGUAGE`. In our case, let's create an `index.html.heex` file at `lib/hello_web/controllers/hello_html/index.html.heex`:

**Template files are compiled into the module as function components themselves, there is no runtime or performance difference between the two styles.**


