import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
open RCLike
open scoped BigOperators

lemma OrthonormalBasis.repr_symm_inj
    {ι 𝕜 E : Type*}
    [RCLike 𝕜]
    [NormedAddCommGroup E]
    [InnerProductSpace 𝕜 E]
    [Fintype ι]
    (b : OrthonormalBasis ι 𝕜 E) :
    Function.Injective b.repr.symm := by
  intro x y h_eq
  have h2 : b.repr (b.repr.symm x) = b.repr (b.repr.symm y) := by
    have h3 : b.repr.symm x = b.repr.symm y := h_eq
    rw [h3]
  have h4 : b.repr (b.repr.symm x) = x := by
    simp [b.repr.right_inv]
  have h5 : b.repr (b.repr.symm y) = y := by
    simp [b.repr.right_inv]
  rw [h4] at h2
  rw [h5] at h2
  exact h2