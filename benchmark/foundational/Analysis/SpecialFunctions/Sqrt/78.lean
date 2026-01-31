import Mathlib

lemma sqrt_comp_mul_self (f : ℝ → ℝ) :
    Real.sqrt ∘ (fun x => f x * f x) = fun x => |f x| := by
  sorry
