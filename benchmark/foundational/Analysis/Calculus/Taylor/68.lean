import Mathlib

theorem taylorWithinEval_real_mul
    (f g : ℝ → ℝ) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval (fun y => f y * g y) n s x₀ x =
      ∑ k ∈ Finset.range (n + 1),
        ((x - x₀) ^ k *
          ∑ i ∈ Finset.range (k + 1),
            (Nat.choose k i : ℝ) *
              taylorCoeffWithin f i s x₀ *
              taylorCoeffWithin g (k - i) s x₀) := by
  sorry