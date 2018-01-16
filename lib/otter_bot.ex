defmodule OtterBot do
  @moduledoc """
  Documentation for OtterBot.
  """
  use Application
  alias Alchemy.Client

  defp start_services do
    use OtterBot.Services.Tests
    #use OtterBot.Services.Play
  end 

  def start(_type, _args) do
    {_, bot_token} = File.read("bot_token")
    bot_token = String.trim(bot_token)
    run = Client.start(bot_token)
    start_services()
    run 
  end
end
