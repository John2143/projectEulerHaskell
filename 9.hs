main = print $ head [a * b * c |
    a <- [1..1000],
    b <- [1..1000],
    let c = 1000 - b - a,
    c*c == b*b + a*a]
