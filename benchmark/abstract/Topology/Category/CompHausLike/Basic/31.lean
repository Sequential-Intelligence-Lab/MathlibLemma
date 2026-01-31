import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.isoOfBijective_inv_bijective
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P}
    (f : X ⟶ Y) (hf : Function.Bijective f) :
    Function.Bijective (CompHausLike.isoOfBijective (P := P) f hf).inv := by
  sorry
