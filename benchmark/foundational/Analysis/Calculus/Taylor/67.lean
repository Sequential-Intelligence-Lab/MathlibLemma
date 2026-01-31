import Mathlib

open scoped BigOperators
open Finset

theorem taylorCoeffWithin_real_mul
    (f g : ℝ → ℝ) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin (fun x => f x * g x) k s x₀ =
      ∑ i ∈ range (k + 1),
        ((Nat.choose k i : ℝ) *
          taylorCoeffWithin f i s x₀ *
          taylorCoeffWithin g (k - i) s x₀) := by
  sorry