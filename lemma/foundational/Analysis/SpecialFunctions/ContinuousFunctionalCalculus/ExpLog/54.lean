import Mathlib

lemma CFC.exp_norm_bound
  {𝕜 A : Type*}
  [RCLike 𝕜]
  [NormedRing A] [StarRing A] [NormedAlgebra 𝕜 A]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]
  (a : A) :
  ‖a‖ ≤ Real.exp ‖a‖ := by
  -- First, show ‖a‖ ≤ ‖a‖ + 1
  have h1 : ‖a‖ ≤ ‖a‖ + 1 := by
    have h0 : (0 : ℝ) ≤ 1 := by norm_num
    simpa using (le_add_of_nonneg_right h0 (a := ‖a‖))
  -- Then, use the standard inequality ‖a‖ + 1 ≤ exp ‖a‖
  have h2 : ‖a‖ + 1 ≤ Real.exp ‖a‖ :=
    Real.add_one_le_exp ‖a‖
  -- Combine them
  exact le_trans h1 h2