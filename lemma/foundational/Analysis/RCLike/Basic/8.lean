import Mathlib

lemma RCLike.re_add (K : Type*) [RCLike K] (z w : K) :
    RCLike.re (z + w) = RCLike.re z + RCLike.re w := by
  simpa using (RCLike.re.map_add z w)