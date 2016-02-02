defmodule Gibson.Status do
  
  use GenServer

  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, opts)
  end

  def handle_call({:status, component_id}, _from, state) do
    {:reply, {:ok, :crypto.rand_uniform(0, 255)}, state}
  end
end
