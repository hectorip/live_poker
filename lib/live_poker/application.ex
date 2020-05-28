defmodule LivePoker.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      LivePokerWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: LivePoker.PubSub},
      # Start the Endpoint (http/https)
      LivePokerWeb.Endpoint
      # Start a worker by calling: LivePoker.Worker.start_link(arg)
      # {LivePoker.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LivePoker.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    LivePokerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
