defmodule OceanView.ContactView do
	use OceanView.Web, :view

	def render("index.json", %{contacts: contacts}) do
		contacts
	end
end