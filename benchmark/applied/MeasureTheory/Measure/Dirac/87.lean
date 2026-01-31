import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_ae_eventually_const
    {a : α} {f : α → β} :
    (∀ᵐ x ∂Measure.dirac a, f x = f a) := by
  sorry
