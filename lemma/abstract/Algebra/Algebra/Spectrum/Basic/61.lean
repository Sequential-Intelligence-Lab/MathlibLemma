import Mathlib

lemma spectrum.mem_scalar_eq
    {𝕜 A : Type*} [Field 𝕜] [Ring A] [Algebra 𝕜 A] [Nontrivial A]
    (a : 𝕜) :
    a ∈ spectrum 𝕜 (algebraMap 𝕜 A a) := by
  -- Unfold the definition of membership in the spectrum
  change ¬ IsUnit (algebraMap 𝕜 A a - algebraMap 𝕜 A a)
  -- This simplifies to `¬ IsUnit (0 : A)`, which is `zero_not_isUnit`
  simpa using (zero_not_isUnit (A := A))