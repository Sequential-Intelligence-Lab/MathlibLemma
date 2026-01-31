import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.compact_preimage_of_closed
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (f : X ⟶ Y) (C : Set Y)
    (hC : IsClosed C) :
    IsCompact (f ⁻¹' C) := by
  sorry
