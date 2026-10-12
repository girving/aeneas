//! Branches that project out of tuple-returning calls, and tuple patterns bound to branches: the let-branching
//! simplification must not fail on variables bound inside the branches (it used to raise an internal error).

trait Coefs {
    fn coef(k: u32) -> (u32, u32);
}

fn other(k: u32) -> (u32, u32) {
    (k, k)
}

pub fn first<C: Coefs>(b: bool, k: u32) -> u32 {
    if b { C::coef(k).0 } else { other(k).0 }
}

pub fn pair<C: Coefs>(b: bool, k: u32) -> u32 {
    let (x, y) = if b { C::coef(k) } else { other(k) };
    x + y
}
