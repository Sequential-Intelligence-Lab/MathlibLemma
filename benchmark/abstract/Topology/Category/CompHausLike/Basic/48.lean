import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
def CompHausLike.True_is_CompHaus :
    (CompHausLike (fun _ : TopCat => True)) ≃
    (CompHausLike (fun _ : TopCat => True)) := by
  -- silly base equivalence; would interact with actual `CompHaus` alias
  sorry