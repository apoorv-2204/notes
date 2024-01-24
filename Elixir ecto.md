
## multi

In the `Ecto.Multi` module, the third argument of `insert/3` or `update/3` functions is a function that takes the changeset and the current context, and it should return either the modified changeset or a struct that will be inserted or updated. You don't execute the operations manually within those functions; instead, you describe what operation you want to perform.

```
defmodule KCCore.Repo.Migrations.MakeSpTypesConsistent do
use Ecto.Migration
alias KCCore.ServiceProviders.ServiceProvider
alias KCCore.Repo
import Ecto.Query
# alias KCCore.ServiceProviders.ServiceProvider

# dont use alias or kcore repo directly it may cause column dont exist for all field
@service_provider_types %{
"telecoms" => "telecommunications",
"tv" => "television"
}


@table_name "service_providers"
  

def up do
Repo.transaction(fn ->
for {from_type, to_type} <- @service_provider_types do
# query = from(s in ServiceProvider, where: s.service_provider_type == ^from_type)

query =

from(

s in fragment(@table_name),

select: %{service_provider_type: s.service_provider_type},

where: s.service_provider_type == ^from_type

)

  

Repo.all(query)

|> Enum.map(fn sp ->

sp

|> ServiceProvider.changeset(%{service_provider_type: to_type})

|> Repo.update()

end)

end

end)

end

  

def down do

Repo.transaction(fn ->

for {to_type, from_type} <- @service_provider_types do

# query = from(s in ServiceProvider, where: s.service_provider_type == ^from_type)

query =

from(

s in fragment(@table_name),

select: %{service_provider_type: s.service_provider_type},

where: s.service_provider_type == ^from_type

)

  

Repo.all(query)

|> Enum.map(fn sp ->

sp

|> ServiceProvider.changeset(%{service_provider_type: to_type})

|> Repo.update()

end)

end

end)

end

end
```


sudo -i -u  postgres  , create role rdsadmin; create role backend_user; 
mix ecto.load -d /home/apoorv-2204/Downloads/staging-data.sql