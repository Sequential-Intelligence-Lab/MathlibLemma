import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_closedBall
    [PseudoMetricSpace α] [MeasurableSingletonClass α]
    (a x : α) (r : ℝ) :
    Measure.dirac x (Metric.closedBall a r) =
      if dist x a ≤ r then 1 else 0 := by
  sorry
