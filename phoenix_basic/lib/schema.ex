defmodule PhoenixBasicWeb.Schema do
 # required to make a module graphQL Schema
 use Absinthe.Schema

 # this is the resolver that will be used
 alias PhoenixBasicWeb.VehicleResolver
 query do
 # this is the query entry point to our app
 end
 mutation do
 # this is the mutation entry point to our app
 end
  end

  defmodule PhoenixBasicWeb.VehicleResolver do
    alias PhoenixBasicWeb.Vehicle
    def all_links(_root, _args, _info) do
    {:ok, Vehicle.list_links()}
    end
   end
