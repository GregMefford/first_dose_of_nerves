defmodule Gibson do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Gibson.Worker, []),
      worker(Gibson.Status, [])
    ]

    opts = [strategy: :one_for_one, name: Gibson.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
