import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.isoOfHomeo_inv
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (h : X ≃ₜ Y) :
    (CompHausLike.isoOfHomeo (P := P) h).inv =
      (CompHausLike.isoOfHomeo (P := P) h.symm).hom := by
  sorry