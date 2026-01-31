import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.iso_iff_homeo
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} :
    Nonempty (X ≅ Y) ↔ Nonempty (X ≃ₜ Y) := by
  sorry
