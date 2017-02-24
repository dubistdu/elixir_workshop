ExUnit.start
defmodule CheaterTest do
  use ExUnit.Case


  test "pick" do
    assert Cheater.pick('','') == ''
    assert Cheater.pick('abc','') == ''
    assert Cheater.pick('abc','b') == 'b'
    assert Cheater.pick('abc','z') == ''
    assert Cheater.pick('abcdef', 'bdf') == 'bdf'
   end
end

  defmodule Cheater do
    def pick(tiles, word)do
      pick(tiles, word, '')
        end
        def pick(tiles, word, accumulator)
        when tiles == '' or word =='' do
          accumulator
        end
        def pick(tiles, [char | chars], accumulator) do
        if Enum.member? tiles, char do
          pick(tiles -- [char], chars, accumulator ++ [char])
        else
        pick(tiles,chars,accumulator)
        end
      end
    end
