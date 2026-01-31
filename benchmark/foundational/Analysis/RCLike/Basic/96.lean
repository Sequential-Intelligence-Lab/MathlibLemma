import Mathlib

lemma RCLike.im_sum {K : Type*} [RCLike K] {ι : Type*} [DecidableEq ι]
    (s : Finset ι) (f : ι → K) :
    RCLike.im (∑ i ∈ s, f i) = ∑ i ∈ s, RCLike.im (f i) := by
  sorry