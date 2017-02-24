ExUnit.start
defmodule CheaterTest do
  use ExUnit.Case

  test "learning some elixir" do
     assert "jumble" == "jumble"
     refute 'jumble' == "jumble"
  end

end
