defmodule N do
  require Logger

  def main(_args) do
    Logger.info "starts main"
    IO.puts "Hello~"
    IO.inspect HTTPoison.get! "http://httparrot.herokuapp.com/get"
  end
end
