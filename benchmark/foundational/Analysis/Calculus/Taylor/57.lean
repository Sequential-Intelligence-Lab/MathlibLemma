import Mathlib

theorem exists_taylor_mean_remainder_bound_univ
    {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : ℝ → E} {a : ℝ} {n : ℕ}
    (hf : ContDiffOn ℝ (n + 1) f (Set.Icc a (a + 1))) :
    ∃ C, ∀ x ∈ Set.Icc a (a + 1),
      ‖f x - taylorWithinEval f n (Set.Icc a (a + 1)) a x‖
        ≤ C * (x - a) ^ (n + 1) := by
  sorry