
$table = {2=>["a","b","c"],3=>["d","e","f"],4=>["g","h","i"],5=>["j","k","l"],6=>["m","n","o"],7=>["p","q","r","s"],8=>["t","u","v"],9=>["w","x","y","z"]}

def letter_combinations(s)
    if s.length == 1
        return $table[s.to_i]
    else 
        sol = []
        e = letter_combinations(s[1..-1])
        f = s[0].to_i
        $table[f].each {|c|
            e.each {|st|
                sol<<c+st
            }
        }
        return sol
    end
end


print(letter_combinations("23"),"\n")

print(letter_combinations("532"),"\n")


        

