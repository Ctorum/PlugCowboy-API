defmodule PlugCowboyApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: PlugCowboyApi.Router, options: [port: 8080]}
    ]

    Logger.info("Application is starting...")

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PlugCowboyApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
