import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem IsHilbertSum.linearIsometryEquiv_symm_inner_lp
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : IsHilbertSum 𝕜 G V) (f g : lp G 2) :
    inner (𝕜 := 𝕜) (hV.linearIsometryEquiv.symm f) (hV.linearIsometryEquiv.symm g)
      = inner (𝕜 := 𝕜) f g := by
  -- Use the property of isometry to show that the inner product is preserved.
  rw [← hV.linearIsometryEquiv.apply_symm_apply f, ← hV.linearIsometryEquiv.apply_symm_apply g]
  simp [inner_conj_symm]