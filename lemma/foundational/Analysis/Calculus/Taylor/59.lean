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
  classical
  -- Factorial is strictly positive
  have h_pos : 0 < ((n.succ.factorial : ℝ)) := by
    exact_mod_cast (Nat.factorial_pos n.succ)
  -- Hence its inverse is nonnegative
  have h_nonneg : 0 ≤ (n.succ.factorial : ℝ)⁻¹ :=
    inv_nonneg.mpr (le_of_lt h_pos)
  -- Identify the norm of this nonnegative real with itself
  have h_norm_scalar :
      ‖(n.succ.factorial : ℝ)⁻¹‖ = (n.succ.factorial : ℝ)⁻¹ := by
    simpa [Real.norm_eq_abs, abs_of_nonneg h_nonneg]

  -- Unfold the definition of the Taylor coefficient and take norms
  have h_eq :
      ‖taylorCoeffWithin f (n + 1) s x₀‖ =
        ‖(n.succ.factorial : ℝ)⁻¹‖ *
          ‖iteratedDerivWithin (n + 1) f s x₀‖ := by
    -- `taylorCoeffWithin` is defined as inverse factorial times the iterated derivative
    simpa [taylorCoeffWithin, norm_smul] 

  -- Replace the norm of the scalar by the scalar itself (since it is nonnegative)
  have h_eq' :
      ‖taylorCoeffWithin f (n + 1) s x₀‖ =
        (n.succ.factorial : ℝ)⁻¹ *
          ‖iteratedDerivWithin (n + 1) f s x₀‖ := by
    simpa [h_norm_scalar] using h_eq

  -- Turn the equality into the desired inequality
  exact le_of_eq h_eq'