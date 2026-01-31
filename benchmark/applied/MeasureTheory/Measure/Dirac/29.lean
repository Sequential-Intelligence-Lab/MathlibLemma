import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_indicator {a : α} {s : Set α}
    (hs : MeasurableSet s) :
    ∫⁻ x, s.indicator (fun _ => (1 : ℝ≥0∞)) x ∂Measure.dirac a
      = s.indicator (fun _ => (1 : ℝ≥0∞)) a := by
  sorry
