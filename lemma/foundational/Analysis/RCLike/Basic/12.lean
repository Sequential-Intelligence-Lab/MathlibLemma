import Mathlib

lemma RCLike.re_neg (K : Type*) [RCLike K] (z : K) :
    RCLike.re (-z) = - RCLike.re z := by
  simpa using (RCLike.re.map_neg z)