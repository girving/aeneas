module
public import Aeneas.Std.Scalar.Core
public import Std.Tactic.BVDecide
public section

/-!
# Literal bit-widths for `bv_decide`

Since Lean v4.32, `bv_decide` reads the width of an atom syntactically from its inferred type.  The inferred type of
`x.bv` for `x : U32` is `BitVec UScalarTy.U32.numBits`, not `BitVec 32`, so every such atom used to be abstracted.
These `bv_normalize` rewrites (all `rfl`) replace `x.bv` by a definitionally equal atom whose type has a literal width.
-/

namespace Aeneas.Std

/-- `x.bv` at the literal width 8. -/
@[expose] def UScalar.bvLit8 (x : U8) : BitVec 8 := x.bv
@[bv_normalize] theorem UScalar.bv_eq_bvLit8 (x : U8) : x.bv = UScalar.bvLit8 x := rfl

/-- `x.bv` at the literal width 16. -/
@[expose] def UScalar.bvLit16 (x : U16) : BitVec 16 := x.bv
@[bv_normalize] theorem UScalar.bv_eq_bvLit16 (x : U16) : x.bv = UScalar.bvLit16 x := rfl

/-- `x.bv` at the literal width 32. -/
@[expose] def UScalar.bvLit32 (x : U32) : BitVec 32 := x.bv
@[bv_normalize] theorem UScalar.bv_eq_bvLit32 (x : U32) : x.bv = UScalar.bvLit32 x := rfl

/-- `x.bv` at the literal width 64. -/
@[expose] def UScalar.bvLit64 (x : U64) : BitVec 64 := x.bv
@[bv_normalize] theorem UScalar.bv_eq_bvLit64 (x : U64) : x.bv = UScalar.bvLit64 x := rfl

/-- `x.bv` at the literal width 128. -/
@[expose] def UScalar.bvLit128 (x : U128) : BitVec 128 := x.bv
@[bv_normalize] theorem UScalar.bv_eq_bvLit128 (x : U128) : x.bv = UScalar.bvLit128 x := rfl

/-- `x.bv` at the literal width 8. -/
@[expose] def IScalar.bvLit8i (x : I8) : BitVec 8 := x.bv
@[bv_normalize] theorem IScalar.bv_eq_bvLit8i (x : I8) : x.bv = IScalar.bvLit8i x := rfl

/-- `x.bv` at the literal width 16. -/
@[expose] def IScalar.bvLit16i (x : I16) : BitVec 16 := x.bv
@[bv_normalize] theorem IScalar.bv_eq_bvLit16i (x : I16) : x.bv = IScalar.bvLit16i x := rfl

/-- `x.bv` at the literal width 32. -/
@[expose] def IScalar.bvLit32i (x : I32) : BitVec 32 := x.bv
@[bv_normalize] theorem IScalar.bv_eq_bvLit32i (x : I32) : x.bv = IScalar.bvLit32i x := rfl

/-- `x.bv` at the literal width 64. -/
@[expose] def IScalar.bvLit64i (x : I64) : BitVec 64 := x.bv
@[bv_normalize] theorem IScalar.bv_eq_bvLit64i (x : I64) : x.bv = IScalar.bvLit64i x := rfl

/-- `x.bv` at the literal width 128. -/
@[expose] def IScalar.bvLit128i (x : I128) : BitVec 128 := x.bv
@[bv_normalize] theorem IScalar.bv_eq_bvLit128i (x : I128) : x.bv = IScalar.bvLit128i x := rfl

end Aeneas.Std
