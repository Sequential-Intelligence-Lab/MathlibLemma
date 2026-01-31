import Mathlib

/-! ### StrongDual preserves finite products (statement only) -/

noncomputable def StrongDual_pi_equiv
    {𝕜 : Type*} [RCLike 𝕜]
    {ι : Type*} [Fintype ι]
    {E : ι → Type*}
    [∀ i, NormedAddCommGroup (E i)]
    [∀ i, NormedSpace 𝕜 (E i)] :
    StrongDual 𝕜 (∀ i, E i) ≃ₗᵢ[𝕜] (∀ i, StrongDual 𝕜 (E i)) :=
by
  sorry