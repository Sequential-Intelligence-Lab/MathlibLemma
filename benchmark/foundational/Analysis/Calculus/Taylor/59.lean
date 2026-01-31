import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

open scoped BigOperators

theorem taylorCoeffWithin_succ_norm_bound
    {f : ℝ → E} {n : ℕ} {s : Set ℝ} {x₀ : ℝ}
    (hf : ContDiffOn ℝ (n + 1) f s)
    (hs : UniqueDiffOn ℝ s) (hx₀ : x₀ ∈ s) :
    ‖taylorCoeffWithin f (n + 1) s x₀‖
      ≤ (n.succ.factorial : ℝ)⁻¹ *
        ‖iteratedDerivWithin (n + 1) f s x₀‖ := by
  sorry