import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_lintegral_indicator {a : α} {s : Set α}
    (hs : MeasurableSet s) :
    ∫⁻ x, (s.indicator fun _ => (1 : ℝ≥0∞)) x ∂Measure.dirac a
      = Measure.dirac a s := by
  classical
  by_cases ha : a ∈ s
  · -- Case a ∈ s
    simp [lintegral_dirac', Set.indicator_of_mem ha,
      Measure.dirac_apply, hs, ha]
  · -- Case a ∉ s
    simp [lintegral_dirac', Set.indicator_of_not_mem ha,
      Measure.dirac_apply, hs, ha]