defmodule OtterBot.Services.Play do
  use Alchemy.Cogs
  alias Alchemy.Voice

  Cogs.def play do
    {:ok, guild} = Cogs.guild()
    default_voice_channel = Enum.find(guild.channels, &match?(%{type: 2}, &1))
    url = "https://www.youtube.com/watch?v=CcsUYu0PVxY"
    # joins the default channel for this guild
    # this will check if a connection already exists for you
    Voice.join(guild.id, default_voice_channel.id)
    Voice.play_url(guild.id, url)
    Cogs.say "Now playing #{url}"
  end
end
