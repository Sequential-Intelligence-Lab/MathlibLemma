import Mathlib

lemma RCLike.re_pow_two (K : Type*) [RCLike K] (z : K) :
    RCLike.re (z ^ 2) =
      RCLike.re z * RCLike.re z - RCLike.im z * RCLike.im z := by
  simpa [pow_two] using (RCLike.re_mul z z)