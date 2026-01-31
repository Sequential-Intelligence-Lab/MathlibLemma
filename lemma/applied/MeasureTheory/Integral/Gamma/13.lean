import Mathlib

/-- A relation between Gamma values at `(q + 1)/p` and `(q + p + 1)/p`. -/
lemma Real.Gamma_shifted_fraction
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    Real.Gamma ((q + p + 1) / p) =
      ((q + 1) / p) * Real.Gamma ((q + 1) / p) := by
  -- First, show that `q + 1` is positive.
  have hq1 : 0 < q + 1 := by linarith
  -- Hence `(q + 1) / p` is positive since `p > 0`.
  have hx_pos : 0 < (q + 1) / p := div_pos hq1 hp
  -- Positivity implies nonzero.
  have hx_ne : (q + 1) / p ≠ 0 := ne_of_gt hx_pos
  -- `p` is nonzero.
  have hp_ne : (p : ℝ) ≠ 0 := ne_of_gt hp
  -- Rewrite the argument `(q + p + 1) / p` as `(q + 1) / p + 1`.
  have h_arg : (q + p + 1) / p = (q + 1) / p + 1 := by
    calc
      (q + p + 1) / p
          = (q + 1 + p) / p := by ring_nf
      _ = ((q + 1) + p) / p := rfl
      _ = (q + 1) / p + p / p := by
            simpa [add_comm, add_left_comm, add_assoc] using
              (add_div (q + 1) p p)
      _ = (q + 1) / p + 1 := by
            simpa [div_self hp_ne]
  -- Apply the functional equation `Γ(x+1) = x Γ(x)` for `x = (q + 1)/p`.
  have hGamma := Real.Gamma_add_one hx_ne
  -- Rewrite the argument using `h_arg` to match the goal.
  simpa [h_arg] using hGamma