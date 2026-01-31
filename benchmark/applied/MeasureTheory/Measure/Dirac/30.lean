import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_lintegral_eq_eval {a : α} {f : α → ℝ≥0∞}
    (hf : Measurable f) :
    ∫⁻ x, f x ∂Measure.dirac a = f a := by
  sorry
