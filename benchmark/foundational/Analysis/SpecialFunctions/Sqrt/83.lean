import Mathlib

lemma sqrt_periodic_comp {f : ℝ → ℝ} (hf : Function.Periodic f T) :
    Function.Periodic (fun x => √(f x)) T := by
  sorry
