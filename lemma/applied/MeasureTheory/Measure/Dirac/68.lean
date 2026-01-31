import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_ball_self
    [PseudoMetricSpace α] [MeasurableSingletonClass α]
    (x : α) {r : ℝ} (hr : 0 < r) :
    Measure.dirac x (Metric.ball x r) = 1 := by
  classical
  have hx : x ∈ Metric.ball x r := by
    have : dist x x < r := by simpa [dist_self] using hr
    simpa [Metric.mem_ball] using this
  simpa [hx]