import Mathlib

namespace Polynomial

/-- Newton map is equivariant with respect to restriction of scalars along an algebra hom. -/
lemma newtonMap_comp_AlgHom_apply
    {R S T : Type*} [CommRing R] [CommRing S] [CommRing T]
    [Algebra R S] [Algebra R T] [Algebra S T]
    (P : R[X]) (f : S →ₐ[R] T) (x : S) :
    f (Polynomial.newtonMap P x) =
      Polynomial.newtonMap (Polynomial.map (algebraMap R T) P) (f x) := by
  sorry

end Polynomial