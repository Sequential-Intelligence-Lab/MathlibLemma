import Mathlib

theorem Complex.exp_map_mul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (f : E → ℂ) (x : E) :
    Complex.exp (f x) = (fun z => Complex.exp z) (f x) := by
  sorry
