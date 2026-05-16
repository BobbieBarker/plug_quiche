# plug_quiche

HTTP/3 adapter for Phoenix and Plug via Cloudflare quiche.

## Stack

- Elixir ~> 1.17, Phoenix ~> 1.7, Plug ~> 1.16
- Depends on quiche_erl for QUIC/HTTP3 transport
- Test: ExUnit
- Published to Hex as an Elixir package

## Architecture

Implements two contracts:
- `Plug.Conn.Adapter` behaviour (same as plug_cowboy, bandit)
- `Phoenix.Endpoint` adapter contract (`child_spec/1` + helpers)

Adoption story: `adapter: PlugQuiche` in Phoenix endpoint config.

## Conventions

- `mix format` before committing
- `mix credo --strict` must pass with zero issues
- `--warnings-as-errors` on compile
- Every public function gets `@doc`, `@spec`
- `@moduledoc` on all public modules, `@moduledoc false` on internal ones
- Result tuples: `{:ok, value} | {:error, reason}`
- `async: true` on all test modules

## Git

- Branch naming: `FGE-{number}` for tickets
- Commit messages must include `Fixes FGE-{number}`
- Run before pushing: `mix format && mix credo --strict && mix compile --warnings-as-errors && MIX_ENV=dev mix dialyzer && mix test`
