defmodule PlugQuiche do
  @moduledoc """
  HTTP/3 adapter for Phoenix and Plug.

  Implements `Plug.Conn.Adapter` and the `Phoenix.Endpoint` adapter
  contract via `quiche_erl` for QUIC transport and HTTP/3 framing.

  ## Usage

      # In your Phoenix endpoint:
      config :my_app, MyAppWeb.Endpoint,
        adapter: PlugQuiche

  ## Status

  Early development. Not yet functional.
  """
end
