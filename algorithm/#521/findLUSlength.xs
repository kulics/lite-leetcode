Find LUS length(a: Str, b: Str) -> (v: Int) {
    LA := a.len
    LB := b.len

    ? a == b {
        <- (-1)
    } LA > LB {
        <- (LA)
    }
    <- (LB)
}
