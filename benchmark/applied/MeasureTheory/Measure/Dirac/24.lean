import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_ae_nmem_singleton {a b : α} (h : a ≠ b) :
    (∀ᵐ x ∂Measure.dirac a, x ∉ ({b} : Set α)) := by
  sorry
