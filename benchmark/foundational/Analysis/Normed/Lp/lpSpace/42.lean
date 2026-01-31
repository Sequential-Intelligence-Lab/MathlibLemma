import Mathlib

open scoped ENNReal

lemma lp.norm_single_le {α : Type*} {E : α → Type*}
    [DecidableEq α] [∀ i, NormedAddCommGroup (E i)]
    [∀ i, NormedSpace ℝ (E i)]
    {p : ℝ≥0∞} (i : α) (x : E i) :
    ‖lp.single p i x‖ ≤ ‖x‖ := by
  sorry