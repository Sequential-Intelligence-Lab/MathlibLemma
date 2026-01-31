import Mathlib

lemma RCLike.im_pow_two (K : Type*) [RCLike K] (z : K) :
    RCLike.im (z ^ 2) =
      2 * RCLike.re z * RCLike.im z := by
  -- Express z in terms of its real and imaginary parts
  have hz : ((RCLike.re z : ℝ) : K) + (RCLike.im z : ℝ) * RCLike.I = z :=
    RCLike.re_add_im z
  -- Rewrite z using hz, expand the square, and simplify the imaginary part
  -- using the RCLike simp lemmas.
  simpa [pow_two, hz, two_mul, mul_add, add_mul,
    mul_comm, mul_left_comm, mul_assoc]