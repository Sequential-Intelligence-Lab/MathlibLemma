import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.isoEquivHomeo_left_inv
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} :
    Function.LeftInverse
      (CompHausLike.isoEquivHomeo (P := P) (X := X) (Y := Y)).invFun
      (CompHausLike.isoEquivHomeo (P := P) (X := X) (Y := Y)).toFun := by
  sorry
