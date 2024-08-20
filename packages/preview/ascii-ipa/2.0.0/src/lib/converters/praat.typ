// https://www.fon.hum.uva.nl/praat/manual/Phonetic_symbols.html
// https://en.wikipedia.org/wiki/Comparison_of_ASCII_encodings_of_the_International_Phonetic_Alphabet

#let praat-unicode = (
  ("!", "ǃ"),
  ("\\'1", "ˈ"),
  ("\\'2", "ˌ"),
  ("\\'^", "́"),
  ("\\+v", "̟"),
  ("\\-^", "̄"),
  ("\\-v", "̱"),
  ("\\.f", "ˑ"),
  ("\\0^", "̊"),
  ("\\0v", "̥"),
  ("\\3v", "̹"),
  ("\\9-", "ʢ"),
  ("\\9e", "ʕ"),
  ("\\:^", "̈"),
  ("\\:f", "ː"),
  ("\\:v", "̤"),
  ("\\?-", "ʡ"),
  ("\\?g", "ʔ"),
  ("\\Dv", "̻"),
  ("\\G^", "ʛ"),
  ("\\N^", "̆"),
  ("\\Nv", "̪"),
  ("\\O.", "ʘ"),
  ("\\Oe", "ɶ"),
  ("\\T(", "̘"),
  ("\\T)", "̙"),
  ("\\T^", "̝"),
  ("\\Tv", "̞"),
  ("\\Uv", "̺"),
  ("\\^9", "ˁ"),
  ("\\^?", "ˀ"),
  ("\\^G", "ᶭ"),
  ("\\^H", "ʱ"),
  ("\\^M", "ᵚ"),
  ("\\^N", "ᵑ"),
  ("\\^Y", "ᶣ"),
  ("\\^^", "̂"),
  ("\\^f", "ᶠ"),
  ("\\^g", "ˠ"),
  ("\\^h", "ʰ"),
  ("\\^j", "ʲ"),
  ("\\^l", "ˡ"),
  ("\\^m", "ᵐ"),
  ("\\^n", "ⁿ"),
  ("\\^s", "ˢ"),
  ("\\^w", "ʷ"),
  ("\\^x", "ˣ"),
  ("\\^y", "ʸ"),
  ("\\_u", "‿"),
  ("\\`^", "̀"),
  ("\\ab", "ɒ"),
  ("\\ae", "æ"),
  ("\\ap", "ʼ"),
  ("\\as", "ɑ"),
  ("\\at", "ɐ"),
  ("\\b^", "ɓ"),
  ("\\bc", "ʙ"),
  ("\\bf", "β"),
  ("\\c.", "ç"),
  ("\\cc", "ɕ"),
  ("\\cf", "χ"),
  ("\\cn", "̚"),
  ("\\ct", "ɔ"),
  ("\\cv", "̜"),
  ("\\d.", "ɖ"),
  ("\\d^", "ɗ"),
  ("\\dh", "ð"),
  ("\\e-", "ɘ"),
  ("\\ef", "ɛ"),
  ("\\er", "ɜ"),
  ("\\f.", "ɽ"),
  ("\\ff", "ɸ"),
  ("\\fh", "ɾ"),
  ("\\g^", "ɠ"),
  ("\\gc", "ɢ"),
  ("\\gf", "ɣ"),
  ("\\gs", "ɡ"),
  ("\\h-", "ħ"),
  ("\\h^", "ɦ"),
  ("\\hc", "ʜ"),
  ("\\hj", "ɧ"),
  ("\\hr", "˞"),
  ("\\hs", "ʊ"),
  ("\\ht", "ɥ"),
  ("\\i-", "ɨ"),
  ("\\ic", "ɪ"),
  ("\\id", "ɿ"),
  ("\\ir", "ʅ"),
  ("\\j-", "ɟ"),
  ("\\j^", "ʄ"),
  ("\\jc", "ʝ"),
  ("\\kb", "ɞ"),
  ("\\l-", "ɬ"),
  ("\\l.", "ɭ"),
  ("\\lc", "ʟ"),
  ("\\li", "͡"),
  ("\\lz", "ɮ"),
  ("\\l~", "ɫ"),
  ("\\mj", "ɱ"),
  ("\\ml", "ɰ"),
  ("\\mt", "ɯ"),
  ("\\n.", "ɳ"),
  ("\\nc", "ɴ"),
  ("\\ng", "ŋ"),
  ("\\nj", "ɲ"),
  ("\\nv", "̯"),
  ("\\o-", "ɵ"),
  ("\\o/", "ø"),
  ("\\oe", "œ"),
  ("\\r.", "ɻ"),
  ("\\rc", "ʀ"),
  ("\\rh", "ɤ"),
  ("\\ri", "ʁ"),
  ("\\rl", "ɺ"),
  ("\\rt", "ɹ"),
  ("\\s.", "ʂ"),
  ("\\sh", "ʃ"),
  ("\\sr", "ɚ"),
  ("\\sw", "ə"),
  ("\\t.", "ʈ"),
  ("\\tS", "ʧ"),
  ("\\tf", "θ"),
  ("\\ts", "ʦ"),
  ("\\u-", "ʉ"),
  ("\\v^", "̌"),
  ("\\vs", "ʋ"),
  ("\\vt", "ʌ"),
  ("\\wt", "ʍ"),
  ("\\x^", "̽"),
  ("\\yc", "ʏ"),
  ("\\yt", "ʎ"),
  ("\\z.", "ʐ"),
  ("\\zc", "ʑ"),
  ("\\zh", "ʒ"),
  ("\\|-", "ǂ"),
  ("\\|1", "ǀ"),
  ("\\|2", "ǁ"),
  ("\\|f", "|"),
  ("\\|v", "̩"),
  ("\\~^", "̃"),
  ("\\~v", "̰"),
  ("a", "a"),
  ("b", "b"),
  ("c", "c"),
  ("d", "d"),
  ("d^l", "dˡ"),
  ("e", "e"),
  ("f", "f"),
  ("h", "h"),
  ("i", "i"),
  ("j", "j"),
  ("k", "k"),
  ("l", "l"),
  ("m", "m"),
  ("n", "n"),
  ("o", "o"),
  ("p", "p"),
  ("q", "q"),
  ("r", "r"),
  ("s", "s"),
  ("t", "t"),
  ("t^l", "tˡ"),
  ("u", "u"),
  ("v", "v"),
  ("w", "w"),
  ("x", "x"),
  ("y", "y"),
  ("z", "z"),
).sorted(
  key: (match) => -match.at(0).len()
)

#let convert-praat(text, reverse: false) = {
  let (from, to) = if reverse { (1, 0) } else { (0, 1) }

  for pair in praat-unicode {
    text = text.replace(pair.at(from), pair.at(to))
  }

  return text
}
