import Mathlib

lemma RCLike.re_smul_real {K E : Type*} [RCLike K] [NormedAddCommGroup E] [NormedSpace K E]
    (x : ℝ) (z : K) :
    RCLike.re (x • z : K) = x * RCLike.re z := by
  -- View `RCLike.re` as the continuous linear map `reCLM`
  change (RCLike.reCLM : K →L[ℝ] ℝ) (x • z) = x * (RCLike.reCLM z)
  -- Use ℝ-linearity of `reCLM`, then identify scalar action on ℝ with multiplication
  simpa [smul_eq_mul] using
    (RCLike.reCLM : K →L[ℝ] ℝ).map_smulₛₗ x z