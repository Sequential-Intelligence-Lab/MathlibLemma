import Mathlib

universe u v w

open TopCat

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.snd_continuous
    {P : TopCat.{u} → Prop}
    (X Y : CompHausLike P)
    (hP : P (X.toTop ⨯ Y.toTop)) :
    Continuous (fun p : (X × Y) => p.2) := by
  sorry

/-! ### Interaction with `Profinite`, `CompHaus`, etc. (as special cases of `P`) -/