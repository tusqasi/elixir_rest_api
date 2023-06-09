defmodule UsersApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      UsersApiWeb.Telemetry,
      # Start the Ecto repository
      UsersApi.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: UsersApi.PubSub},
      # Start Finch
      {Finch, name: UsersApi.Finch},
      # Start the Endpoint (http/https)
      UsersApiWeb.Endpoint
      # Start a worker by calling: UsersApi.Worker.start_link(arg)
      # {UsersApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: UsersApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    UsersApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
