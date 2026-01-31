import Mathlib

variable {E : Type _}

theorem taylorWithinEval_continuousAt
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : ℝ → E} {n : ℕ} {s : Set ℝ} {x₀ x : ℝ}
    (hs : UniqueDiffOn ℝ s)
    (hf : ContDiffOn ℝ n f s)
    (hx₀ : x₀ ∈ s) :
    ContinuousAt (fun t => taylorWithinEval f n s t x) x₀ := by
  sorry