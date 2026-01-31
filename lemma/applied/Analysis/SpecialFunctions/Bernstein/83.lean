import Mathlib

-- 84. A lemma about differentiability of Bernstein polynomials in `x`
lemma differentiable_bernstein_in_x
    (n k : ℕ) :
    Differentiable ℝ fun x : ℝ =>
      (n.choose k : ℝ) * x ^ k * (1 - x) ^ (n - k) := by
  -- Constant factor (n.choose k : ℝ)
  have h_const :
      Differentiable ℝ fun x : ℝ => (n.choose k : ℝ) :=
    differentiable_const _

  -- Power x ^ k
  have h_xpow :
      Differentiable ℝ fun x : ℝ => x ^ k := by
    simpa using
      (differentiable_pow (n := k) : Differentiable ℝ fun x : ℝ => x ^ k)

  -- Function 1 - x
  have h_one_minus :
      Differentiable ℝ fun x : ℝ => (1 : ℝ) - x :=
    (differentiable_const (c := (1 : ℝ)))
      |>.sub (differentiable_id (𝕜 := ℝ) (E := ℝ))

  -- Power (1 - x) ^ (n - k)
  have h_ompow :
      Differentiable ℝ fun x : ℝ => (1 - x) ^ (n - k) := by
    simpa using h_one_minus.pow (n - k)

  -- Combine the three differentiable factors
  have h_all :
      Differentiable ℝ fun x : ℝ =>
        ((n.choose k : ℝ) * x ^ k) * (1 - x) ^ (n - k) :=
    (h_const.mul h_xpow).mul h_ompow

  -- Rewrite to match the goal
  simpa using h_all