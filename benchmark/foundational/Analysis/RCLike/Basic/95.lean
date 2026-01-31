import Mathlib

lemma RCLike.re_sum {K : Type*} [RCLike K] {ι : Type*} (s : Finset ι) (f : ι → K) :
    RCLike.re (∑ i ∈ s, f i) = ∑ i ∈ s, RCLike.re (f i) := by
  sorry

lemma RCLike.realPart_sum {K : Type*} [RCLike K] {ι : Type*} (s : Finset ι) (f : ι → K) :
    RCLike.re (Finset.sum (s := s) (fun i => f i)) =
      Finset.sum (s := s) (fun i => RCLike.re (f i)) := by
  sorry