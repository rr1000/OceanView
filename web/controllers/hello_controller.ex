defmodule OceanView.HelloController do
	use OceanView.Web, :controller

	plug :action

	def index(conn, _params) do
	render conn, "index.html"
	end
end