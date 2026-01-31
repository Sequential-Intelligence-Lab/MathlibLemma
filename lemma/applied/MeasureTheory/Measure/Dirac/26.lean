import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_isFiniteMeasure (a : α) :
    IsFiniteMeasure (Measure.dirac a) := by
  constructor
  -- We need to show `(Measure.dirac a) univ < ∞`.
  -- `simp` rewrites this to `1 < ∞`, which is a standard lemma.
  simpa using (one_lt_top : (1 : ℝ≥0∞) < ∞)