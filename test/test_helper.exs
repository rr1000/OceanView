defmodule OceanView.Cast do
	use ExUnit.CaseTemplate
	alias Ecto.Adapters.SQL
	alias OceanView.Repo

	setup do
		SQL.begin_test_transaction(Repo)

		on_exit fn ->
			SQL.rollback_test_transaction(Repo)
		end
	end

	using do
		quote do
			alias OceanView.Repo
			alias OceanView.Contact
			use Plug.Test

			def send_request(conn) do
				conn
				|> put_private(:plug_skip_csrf_protection, true)
				|> OceanView.Endpoint.call([])
			end
		end
	end
end

ExUnit.start

Mix.Task.run "ecto.create", ["--quiet"]
Mix.Task.run "ecto.migrate", ["--quiet"]
Ecto.Adapters.SQL.begin_test_transaction(OceanView.Repo)