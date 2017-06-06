::RBNACL_LIBSODIUM_GEM_LIB_PATH = "F:/libsodium.dll"
require 'discordrb'
 
bot = Discordrb::Commands::CommandBot.new token: 'MzEwNzQ0MjM4MDk2OTA4Mjg5.C_Cdnw.aA_qiBFtYVjXXZ-qX3YYA7V6UCY', client_id: 310744238096908289, prefix: '!'

bot.message(with_text: '進捗') do |event|
  event.respond '進捗どうですか'
end


bot.message(with_text: 'OutletTwit') do |event|
  event.respond '進捗どうですか'
end

bot.message(with_text: 'ぬるぽ') do |event|
  event.respond 'ｶﾞｯ'
end

bot.message(with_text: 'NullPointerException') do |event|
  event.respond 'ｶﾞｯ'
end

bot.message(with_text: 'すうぃーくちゃん') do |event|
  event.respond 'こんにちは！'
end

bot.mention do |event|

  event.user.pm('Hello')
end

bot.message(with_text:'!bot info') do |event|
  event << 'SweakBot Beta1'
  event << 'SweakBotは、SweakNetworkのDiscord上で動作するBotです。'
  event << '人工無能(脳)として、皆様のリクエストや会話をもとに反応を増やしていきます。'
  event << '現在βで管理者のHoodooが手打ちで追加しているため、反映が遅れる可能性があります、申し訳ありません…'
  event << '呼ぶときは気軽にメンションか「すうぃーくちゃん」と呼んでくださいね!'
  event << 'サーバの関連で現在同伴出勤です。'
end

bot.command(:connect) do |event|

  channel = event.user.voice_channel

  next "You're not in any voice channel!" unless channel


  bot.voice_connect(channel)
  "Connected to voice channel: #{channel.name}"
end

# MP3再生コマンド
bot.command(:play_mp3) do |event|
  voice_bot = event.voice
  voice_bot.play_file('data/music.mp3')
end

bot.run