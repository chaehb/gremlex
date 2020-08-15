defmodule JasonTupleEncoder do
  @moduledoc """
  The custom encoder  tuple to list
  {e1,...} --> [e1,...]
  """
  alias Jason.Encoder

  defimpl Encoder, for: [Tuple] do
    def encode(data, options) when is_tuple(data) do
      data
      |> Tuple.to_list()
      |> Encoder.List.encode(options)
    end
  end
end
