defmodule OceanView.ContactController do
	use OceanView.Web, :controller
	alias OceanView.Contact

	plug :action

	def index(conn, _params) do
		contacts = Repo.all(Contact)
		render conn, contacts: contacts
	end
end