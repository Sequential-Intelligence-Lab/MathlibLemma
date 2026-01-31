import Mathlib

lemma deriv_comp_mul {f : ℝ → ℝ} {g : ℝ → ℝ} {x : ℝ}
    (hf : HasDerivAt f (deriv f (g x)) (g x))
    (hg : HasDerivAt g (deriv g x) x) :
    HasDerivAt (fun t => f (g t)) (deriv f (g x) * deriv g x) x := by
  sorry
