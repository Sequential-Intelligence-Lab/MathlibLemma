import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_integral_eq_eval_real
    {a : α} {f : α → ℝ} (hf : Measurable f) :
    ∫ x, f x ∂Measure.dirac a = f a := by
  sorry
