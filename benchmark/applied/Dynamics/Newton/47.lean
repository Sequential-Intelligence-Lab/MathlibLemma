import Mathlib

open Polynomial

/-- If a polynomial has no multiple roots, any two `nilpotent + root` decompositions provided by
the Newton method must coincide. -/
lemma unique_nilpotent_root_decomposition_separable
    {R S : Type*} [Field R] [CommRing S] [Algebra R S]
    (P : R[X]) (hsep : Separable P)
    {x : S} (hx : IsNilpotent (aeval x P))
    (hP' : IsUnit (aeval x P.derivative))
    {r₁ r₂ : S}
    (h₁ : IsNilpotent (x - r₁) ∧ aeval r₁ P = 0)
    (h₂ : IsNilpotent (x - r₂) ∧ aeval r₂ P = 0) :
    r₁ = r₂ := by
  sorry