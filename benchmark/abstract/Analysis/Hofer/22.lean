import Mathlib

/-- If `f : ℝ → ℝ` is continuous and bounded on every compact set, then it is locally bounded. -/
lemma Continuous.locally_bounded_of_bounded_on_compacts
    {f : ℝ → ℝ} (hf : Continuous f)
    (hK : ∀ K : Set ℝ, IsCompact K → ∃ M, ∀ x ∈ K, |f x| ≤ M) :
    ∀ x, ∃ r > 0, ∃ M, ∀ y, |y - x| ≤ r → |f y| ≤ M := by
  sorry
