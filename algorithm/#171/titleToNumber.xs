Title To Number(s: Str) -> (v: Int) {
    Num := 0
    s @ i {
        Num *= 26
        Num += i - 'A' + 1
    }
    <- (Num)
}
