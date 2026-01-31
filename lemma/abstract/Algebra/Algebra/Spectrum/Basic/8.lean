import Mathlib

lemma spectrum.subset_of_mul_commute
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    {a b : A} (h : Commute a b) :
    spectrum R (a * b) ⊆ spectrum R (b * a) := by
  -- `h` is definitionally the equality `a * b = b * a`
  have hmul : a * b = b * a := h
  -- Rewrite the right-hand spectrum using this equality
  simpa [hmul] using
    (subset_rfl : spectrum R (a * b) ⊆ spectrum R (a * b))