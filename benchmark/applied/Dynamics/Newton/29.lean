import Mathlib

open Function

namespace Polynomial

/-- If Newton iteration starting at `x` for a polynomial `P` over a field stays in a finite set,
then some iterate is periodic. -/
lemma newtonMap_iterate_finite_orbit_periodic
    {K : Type*} [Field K] (P : K[X]) (x : K)
    (hfin : (Set.range fun n : ℕ => (P.newtonMap^[n]) x).Finite) :
    ∃ m n, m < n ∧ (P.newtonMap^[m]) x = (P.newtonMap^[n]) x := by
  sorry

end Polynomial