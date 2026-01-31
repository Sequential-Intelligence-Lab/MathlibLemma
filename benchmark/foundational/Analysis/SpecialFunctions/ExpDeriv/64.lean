import Mathlib

theorem Complex.hasDerivAt_exp_comp {f : ℂ → ℂ} {f' : ℂ} {x : ℂ}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun z => Complex.exp (f z)) (Complex.exp (f x) * f') x := by
  sorry
