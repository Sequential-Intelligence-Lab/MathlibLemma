import Mathlib

lemma RCLike.im_smul_real {K E : Type*} [RCLike K]
    [NormedAddCommGroup E] [NormedSpace K E]
    (x : ℝ) (z : K) :
    RCLike.im (x • z : K) = x * RCLike.im z := by
  -- Real scalar multiplication on `K` is given by `Algebra.smul_def`,
  -- and `RCLike.im_ofReal_mul` gives the needed formula for `ofReal x * z`.
  simpa [Algebra.smul_def] using RCLike.im_ofReal_mul x z