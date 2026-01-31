import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.homeoOfIso_inv
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (f : X ≅ Y) :
    (CompHausLike.homeoOfIso (P := P) f).symm =
      CompHausLike.homeoOfIso (P := P) f.symm := by
  sorry