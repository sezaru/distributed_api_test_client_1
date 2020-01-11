defmodule Main do
  def run_predict do
    Api.Ml.predict("bla bla") |> IO.inspect(label: "predict result")
  end
end
