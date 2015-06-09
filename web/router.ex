defmodule OceanView.Router do
	use Phoenix.Router

	pipeline :api do
		plug :accepts, ["json"]
	end

	pipeline :browser do
		plug :accepts, ["html"]
		plug :fetch_session
		plug :fetch_flash
		plug :protect_from_forgery
	end

	scope "/api", OceanView do
		pipe_through :api
		resources "/contacts", ContactController
	end

	scope "/", OceanView do
		pipe_through :browser
		get "/", PageController, :index
		get "/hello", HelloController, :index
	end
end