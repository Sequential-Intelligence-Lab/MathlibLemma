import Mathlib

/-- Newton map commutes with algebra equivalences on the target algebra. -/
lemma Polynomial.newtonMap_conj_by_algEquiv
    {R S T : Type*} [CommRing R] [CommRing S] [CommRing T]
    [Algebra R S] [Algebra R T]
    (P : Polynomial R) (e : S ≃ₐ[R] T) (x : S) :
    e (Polynomial.newtonMap P x) = Polynomial.newtonMap P (e x) := by
  sorry