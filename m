import discord
import os

client = discord.Client()


@client.event
async def on_ready():
  print('We have logged in as {0.user}'.format(client))

@client.event
async def on_message(message):
  if message.author == client.user:
    return

  msg = message.content

  if msg.startswith('$dinfo'):
    await message.channel.send("Donation Info If you would like to make a donation, please run the command below.`-donate time/winners/req/prize/msg`")



  


client.run(os.getenv('TOKEN'))
