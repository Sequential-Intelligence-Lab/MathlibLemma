import Mathlib

lemma spectrum.image_subalgebra_coe_subsingleton
    {R A S : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    [SetLike S A] [SubsemiringClass S A] [SMulMemClass S R A]
    (s : S) [Subsingleton (spectrum R (0 : A))] :
    (spectrum R (0 : A)) = ∅ := by
  sorry
