import Mathlib

lemma RCLike.im_inv (K : Type*) [RCLike K] (z : K) :
    RCLike.im z⁻¹ = - RCLike.im z / RCLike.normSq z := by
  -- `RCLike` is built on top of `IsROrC`, and the corresponding lemma
  -- already exists for `IsROrC`. We just reuse it via `simpa`.
  simpa using (IsROrC.im_inv (z : K))