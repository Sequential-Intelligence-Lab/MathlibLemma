import Mathlib

variable {𝕜 E : Type*}

lemma DirectSum.IsInternal.collectedOrthonormalBasis_span
    [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    {ι : Type*} [DecidableEq ι] [Fintype ι] {V : ι → Submodule 𝕜 E}
    (hV : DirectSum.IsInternal V)
    (hV' : OrthogonalFamily 𝕜 (fun i => V i) fun i => (V i).subtypeₗᵢ)
    {α : ι → Type*} [∀ i, Fintype (α i)]
    (v_family : ∀ i, OrthonormalBasis (α i) 𝕜 (V i)) :
    Submodule.span 𝕜 (Set.range (hV.collectedOrthonormalBasis hV' v_family)) = ⊤ := by
  sorry