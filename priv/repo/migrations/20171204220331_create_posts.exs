defmodule TestingHstore.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add(:list, :map)
      timestamps()
    end
  end
end
