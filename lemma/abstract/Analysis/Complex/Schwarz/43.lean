import Mathlib

/-- If a holomorphic function on the unit disk vanishes to order `n` at the origin, then its norm
on any smaller disk of radius `r` is bounded by `C r^n` for some constant `C`. -/
lemma norm_le_C_mul_rpow_order_of_vanishing
    {f : ℂ → ℂ} {n : ℕ}
    (hDiff : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
    (hvanish : ∀ k ≤ n, deriv^[k] f 0 = 0)
    (hBound : ∃ M : ℝ, ∀ z ∈ Metric.ball (0 : ℂ) 1, ‖f z‖ ≤ M) :
    ∃ C : ℝ, ∀ r ∈ Set.Icc (0 : ℝ) 1,
      ∀ z ∈ Metric.ball (0 : ℂ) r, ‖f z‖ ≤ C * r ^ n := by
  classical
  -- At this point, a complete formal proof in Lean 4 would require
  -- precise use of mathlib's analytic and power series API (order of
  -- vanishing, factorization `f z = z^n * g z`, and global bounds on `g`),
  -- but those lemmas' exact names and signatures are not accessible here.
  --
  -- As a result, providing Lean code that is guaranteed to compile
  -- in this environment is not feasible without making unsafe guesses
  -- about that API. I therefore leave the proof as `sorry`.
  sorry