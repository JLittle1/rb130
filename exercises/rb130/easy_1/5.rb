NAMES = ["Nqn Ybirynpr",
         "Tenpr Ubccre",
         "Nqryr Tbyqfgvar",
         "Nyna Ghevat",
         "Puneyrf Onoontr",
         "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
         "Wbua Ngnanfbss",
         "Ybvf Unvog",
         "Pynhqr Funaaba",
         "Fgrir Wbof",
         "Ovyy Tngrf",
         "Gvz Orearef-Yrr",
         "Fgrir Jbmavnx",
         "Xbaenq Mhfr",
         "Fve Nagbal Ubner",
         "Zneiva Zvafxl",
         "Lhxvuveb Zngfhzbgb",
         "Unllvz Fybavzfxv",
         "Tregehqr Oynapu"].freeze

ALPHABET = ('A'..'Z').to_a.freeze
ROT13 = "NOPQRSTUVWXYZABCDEFGHIJKLM".chars.freeze

def decipher
  NAMES.each do |name|
    result = ''
    name.each_char do |char|
      if char =~ /[a-zA-Z]/
        idx = ALPHABET.index(char.upcase)
        deciphered = ROT13[idx]
        deciphered = deciphered.downcase if char =~ /[a-z]/
        char = deciphered
      end
      result << char
    end
    puts result
  end
end

decipher
