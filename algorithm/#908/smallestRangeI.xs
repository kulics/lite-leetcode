Smallest Range I(a: []Int, k: Int) -> (v: Int) {
    ? a.len == 0 {
        <- (0)
    }
    Max := a[0]
    Min := a[0]
    a @ ea {
        ? ea > Max {
            Max = ea
        } ea < Min {
            Min = ea
        }
    }
    ? Max - Min >= k * 2 {
        <- (Max - Min - k * 2)
    }
    <- (0)
}
