Dynamo.under_test(Atlantaelixir.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Atlantaelixir.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
