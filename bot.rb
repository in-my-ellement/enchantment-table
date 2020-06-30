require 'discordrb'

# Enchantment table language
translate = {
    "a" => "ᔑ",
    "b" => "ʖ",
    "c" => "ᓵ",
    "d" => "↸",
    "e" => "ᒷ",
    "f" => "⎓",
    "g" => "⊣",
    "h" => "⍑",
    "i" => "╎",
    "j" => "⋮",
    "k" => "ꖌ",
    "l" => "ꖎ",
    "m" => "ᒲ",
    "n" => "リ",
    "o" => "𝙹",
    "p" => "!¡",
    "q" => "ᑑ",
    "r" => "∷",
    "s" => "ᓭ",
    "t" => "ℸ",
    "u" => "⚍",
    "v" => "⍊",
    "w" => "∴",
    "x" => "/",
    "y" => "||",
    "z" => "⨅" 
}

bot = Discordrb::Bot.new token: "#{ARGV[0]}"
puts "Invite this bot from #{bot.invite_url}"

bot.message() do |event|
    msg = event.message.content.split(' ')
    if msg[0] == ".enchant" && msg.length() >= 2
        event.respond msg[1..-1].join('  ').gsub(/[A-Za-z]/, translate) 
    end
end

bot.run
