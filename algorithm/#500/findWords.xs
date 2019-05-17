Line1 := {['q']False,['w']False,['e']False,['r']False,['t']False,['y']False,['u']False,['i']False,['o']False,['p']False}
Line2 := {['a']False,['s']False,['d']False,['f']False,['g']False,['h']False,['j']False,['k']False,['l']False}

Find Words(words: []Str) -> (v: []Str) {
    Result := []Str{}
    words @ ea {
        LowerStr := ea.to Lower()
        line = 0
        LowerStr @ c {
            ? Line1.has(c) {
                ? line == 0 | line == 1 {
                    line = 1
                } _ { 
                    <- @ 
                }
            } Line2.has(c) {
                ? line == 0 | line == 2 {
                    line = 2
                } _ { 
                    <- @ 
                }
            } _ {
                ? line == 0 | line == 3 {
                    line = 3
                } _ { 
                    <- @ 
                }
            }
        }
        Result += ea
    }
    <- (Result)
}
