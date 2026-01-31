import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.isoOfHomeo_hom
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (h : X.toTop ≃ₜ Y.toTop) :
    (CompHausLike.isoOfHomeo (P := P) h).hom = (CompHausLike.isoOfHomeo (P := P) h).hom := by
  sorry