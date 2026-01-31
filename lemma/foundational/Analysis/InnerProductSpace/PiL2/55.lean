import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma OrthonormalBasis.stdOrthonormalBasis_repr_symm
    {𝕜 E}
    [RCLike 𝕜]
    [NormedAddCommGroup E]
    [InnerProductSpace 𝕜 E]
    [FiniteDimensional 𝕜 E] :
    (stdOrthonormalBasis 𝕜 E).repr.symm =
      (stdOrthonormalBasis 𝕜 E).repr.symm := by
  -- Simplify the goal using the fact that the symmetric representation of the standard orthonormal basis is equal to itself.
  simp [stdOrthonormalBasis]
  -- Use the `ext` tactic to extensionally prove equality by showing that the symmetric representation of the standard orthonormal basis is equal to itself.
  <;> ext
  -- Simplify the expressions involving the symmetric representation of the standard orthonormal basis.
  <;> simp [stdOrthonormalBasis]
  -- Use the `ext` tactic again to extensionally prove equality by showing that the symmetric representation of the standard orthonormal basis is equal to itself.
  <;> ext
  -- Simplify the expressions involving the symmetric representation of the standard orthonormal basis.
  <;> simp [stdOrthonormalBasis]