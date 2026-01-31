import Mathlib

lemma sqrt_odd_comp_sq {f : ℝ → ℝ} (hf : Function.Odd f) :
    Function.Even (fun x => √(f x ^ 2)) := by
  sorry
