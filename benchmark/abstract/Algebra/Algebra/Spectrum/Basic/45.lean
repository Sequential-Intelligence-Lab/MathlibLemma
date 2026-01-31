import Mathlib

lemma spectrum.mem_of_isEigenvalue
    {R A : Type*} [Field R] [Ring A] [Algebra R A]
    {a : A} {v : A} {r : R}
    (hv : v ≠ 0)
    (h : a * v = algebraMap R A r * v) :
    r ∈ spectrum R a := by
  sorry
