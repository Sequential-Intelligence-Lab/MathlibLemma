import Mathlib

lemma LinearIsometry.extend_unique
    {V : Type*}
    [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V] {S : Submodule ℝ V}
    (L : S →ₗᵢ[ℝ] V)
    (M : V →ₗᵢ[ℝ] V)
    (hM : ∀ x : S, M x = L x) :
    M = L.extend := by
  sorry