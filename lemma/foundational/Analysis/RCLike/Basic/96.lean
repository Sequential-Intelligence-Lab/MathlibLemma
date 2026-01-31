import Mathlib

lemma RCLike.im_sum {K : Type*} [RCLike K] {ι : Type*} [DecidableEq ι]
    (s : Finset ι) (f : ι → K) :
    RCLike.im (∑ i ∈ s, f i) = ∑ i ∈ s, RCLike.im (f i) := by
  -- Replace `RCLike.im` with the function underlying `RCLike.imCLM`
  change (RCLike.imCLM : K →L[ℝ] ℝ) (∑ i ∈ s, f i)
    = ∑ i ∈ s, (RCLike.imCLM : K →L[ℝ] ℝ) (f i)
  -- Now use linearity of `imCLM` to move inside the sum
  simpa using (RCLike.imCLM.map_sum (fun i => f i) s)