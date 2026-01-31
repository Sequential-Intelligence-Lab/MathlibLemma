import Mathlib

lemma spectrum.mem_scalar_eq
    {𝕜 A : Type*} [Field 𝕜] [Ring A] [Algebra 𝕜 A] [Nontrivial A]
    (a : 𝕜) :
    a ∈ spectrum 𝕜 (algebraMap 𝕜 A a) := by
  sorry
