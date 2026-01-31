import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_smul_eq_dirac_iff {a : α} {c : ℝ≥0∞} :
    c • Measure.dirac a = Measure.dirac a ↔ c = 1 := by
  sorry
