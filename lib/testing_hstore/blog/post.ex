defmodule TestingHstore.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias TestingHstore.Blog.Post

  schema "posts" do
    field(:list, {:array, :map})
    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:data, :list])
    |> validate_required([])
  end
end
