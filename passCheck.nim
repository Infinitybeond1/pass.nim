import strutils

proc passCheck*(passwd: string): string =
    var
        includesSymbols = false
        includesCapLetters = false

    if passwd.len < 8:
        return "weakPass"
    else:
        if "!" in passwd or "@" in passwd or "#" in passwd or "$" in passwd or "%" in passwd or "^" in passwd or "&" in passwd or "*" in passwd:
            includesSymbols = true
        else:
            includesSymbols = false
    
        if "A" in passwd or "B" in passwd or "C" in passwd or "D" in passwd or "E" in passwd or "F" in passwd or "G" in passwd or "H" in passwd or "I" in passwd or "J" in passwd or "K" in passwd or "L" in passwd or "M" in passwd or "N" in passwd or "O" in passwd or "P" in passwd or "Q" in passwd or "R" in passwd or "S" in passwd or "T" in passwd or "U" in passwd or "V" in passwd or "W" in passwd or "X" in passwd or "Y" in passwd or "Z" in passwd:
            includesCapLetters = true
        else:
            includesCapLetters = false
    
        if includesSymbols and includesCapLetters:
            return "veryStrongPass"
        elif includesSymbols or includesCapLetters:
            if includesSymbols == false and includesCapLetters == true:
                return "strongPassWithNoSymbols"
            elif includesSymbols == true and includesCapLetters == false:
                return "strongPassWithNoNumbers"