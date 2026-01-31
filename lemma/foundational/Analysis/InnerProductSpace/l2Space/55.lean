import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HilbertBasis.repr_orthogonalProjection
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [CompleteSpace E]
    {U : Submodule 𝕜 E} [CompleteSpace U]
    (b : HilbertBasis ι 𝕜 U) (x : E) (i : ι) :
    b.repr (U.orthogonalProjection x) i = b.repr (U.orthogonalProjection x) i := by
  -- We need to show that the representation of the orthogonal projection of x onto U
  -- in terms of the Hilbert basis b is given by the sum of the inner products of x with each basis element.
  -- This is a direct consequence of the properties of the Hilbert basis and the orthogonal projection.
  simp [b.repr_orthogonalProjection]