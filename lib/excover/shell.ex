defmodule ExCover.Shell do
  import IO.ANSI
  import Enum

  def title(string) do
    Mix.shell.info join [title_color(), string, default()]
  end

  defp default do
    [default_background(), default_color(), faint()]
  end

  defp title_color do
    [blue_background(), light_white(), bright()]
  end
end
