import Mathlib

open scoped NNReal ENNReal

lemma lp.isometry_single'
    {α : Type*} {E : α → Type*}
    [DecidableEq α]
    [∀ i, NormedAddCommGroup (E i)]
    (p : ℝ≥0∞) [Fact (1 ≤ p)]
    (i : α) :
    Isometry (lp.single p i : E i → lp E p) := by
  sorry