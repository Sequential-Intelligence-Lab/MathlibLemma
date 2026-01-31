import Mathlib

lemma spectrum.mem_of_minpoly_dvd
    {R A : Type*} [Field R] [Ring A] [Algebra R A] [FiniteDimensional R A]
    (a : A) (r : R)
    (h : (Polynomial.X - Polynomial.C r) ∣ minpoly R a) :
    r ∈ spectrum R a := by
  sorry
