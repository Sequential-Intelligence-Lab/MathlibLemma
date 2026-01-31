import Mathlib

lemma spectrum.preimage_resolventSet_eq
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    (fun r : R => algebraMap R A r - a) ⁻¹' {x | IsUnit x} = resolventSet R a := by
  sorry
