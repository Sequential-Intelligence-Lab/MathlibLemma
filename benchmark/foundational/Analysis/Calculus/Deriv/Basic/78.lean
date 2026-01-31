import Mathlib

lemma HasDerivAt.exp'
    {f : ℂ → ℂ} {f' : ℂ} {x : ℂ}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => Complex.exp (f y)) (Complex.exp (f x) * f') x := by
  sorry