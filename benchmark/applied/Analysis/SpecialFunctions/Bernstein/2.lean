import Mathlib

-- 3. A Lipschitz-type estimate for Bernstein polynomials on `[0,1]`
lemma bernstein_lipschitz (n ν : ℕ) :
    ∃ L : ℝ, 0 ≤ L ∧
      ∀ x y : unitInterval,
        ‖(bernstein n ν x : ℝ) - bernstein n ν y‖
          ≤ L * dist x y := by
  sorry