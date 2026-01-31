import Mathlib

lemma RCLike.re_mul_conj (K : Type*) [RCLike K] (z : K) :
    RCLike.re (z * star z) = ‖z‖ ^ 2 := by
  -- `RCLike.norm_sq_eq_def` characterizes the square of the norm
  -- in terms of `RCLike.re (z * star z)`.
  -- Its usual direction is `‖z‖ ^ 2 = RCLike.re (z * star z)`,
  -- so we take its symmetric form.
  simpa [RCLike.norm_sq_eq_def] using (RCLike.norm_sq_eq_def (z : K)).symm