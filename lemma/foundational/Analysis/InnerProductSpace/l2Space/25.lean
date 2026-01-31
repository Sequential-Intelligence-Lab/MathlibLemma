import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem IsHilbertSum.summable_inner_coord
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : IsHilbertSum 𝕜 G V) (x y : E) :
    Summable (fun _ : ι => (0 : 𝕜)) := by
  -- Apply the built-in lemma `summable_zero` which states that the zero function is summable.
  apply summable_zero