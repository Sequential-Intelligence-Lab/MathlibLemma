import Mathlib

lemma spectrum.inter_resolventSet_eq_empty
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a ∩ resolventSet R a = ∅ := by
  ext r
  -- Membership in `∅` is always `False`, and the left side reduces to
  -- `r ∈ spectrum R a ∧ r ∈ resolventSet R a`, which is impossible since
  -- the sets are complementary.
  simp [Set.mem_inter_iff, spectrum, resolventSet]