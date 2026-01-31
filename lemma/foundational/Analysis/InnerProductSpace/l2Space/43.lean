import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HilbertBasis.repr_sub
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (x y : E) :
    b.repr (x - y) = b.repr x - b.repr y := by
  ext i
  -- For each index `i` in the index set `ι`, we need to show that the `i`-th component of `b.repr (x - y)` is equal to the `i`-th component of `b.repr x - b.repr y`.
  simp [HilbertBasis.repr_sub, sub_eq_add_neg, add_comm]
  -- By the definition of `b.repr`, the `i`-th component of `b.repr (x - y)` is `⟨x - y, b_i⟩`.
  -- The inner product is linear, so `⟨x - y, b_i⟩ = ⟨x, b_i⟩ - ⟨y, b_i⟩`.
  -- This matches the `i`-th component of `b.repr x - b.repr y`, which is `⟨x, b_i⟩ - ⟨y, b_i⟩`.
  <;> aesop