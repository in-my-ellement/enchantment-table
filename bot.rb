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
    if event.message.content.split(' ')[0] == ".enchant"
        event.respond event.message.content.split(' ')[1..-1].join('  ').gsub(/\w/, translate) 
    end
end

bot.run
