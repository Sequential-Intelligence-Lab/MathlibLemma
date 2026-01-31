import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma inner_add_left_iff {𝕜 E : Type*}
    [RCLike 𝕜] [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    {x y z w : E} :
    inner 𝕜 (x + y) z = inner 𝕜 (x + w) z ↔
      inner 𝕜 y z = inner 𝕜 w z := by
  constructor <;> intro h
  -- Forward direction: Assume ⟨x + y, z⟩ = ⟨x + w, z⟩, prove ⟨y, z⟩ = ⟨w, z⟩
  -- Using the linearity of the inner product, we can expand and simplify
  <;> simp_all [inner_add_left, sub_eq_zero]
  -- Reverse direction: Assume ⟨y, z⟩ = ⟨w, z⟩, prove ⟨x + y, z⟩ = ⟨x + w, z⟩
  -- Using the linearity of the inner product again, we can expand and simplify
  <;> linarith