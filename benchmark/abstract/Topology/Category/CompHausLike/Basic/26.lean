import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.mono_iff_injective'
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (f : X ⟶ Y) :
    CategoryTheory.Mono f ↔ Function.Injective f := by
  sorry