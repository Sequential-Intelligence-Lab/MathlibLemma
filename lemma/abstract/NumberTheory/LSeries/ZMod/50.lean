import Mathlib

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/

lemma riemannZeta_tendsto_one_from_right :
    Filter.Tendsto
      (fun s : ℝ => riemannZeta (s : ℂ))
      (nhdsWithin (1 : ℝ) (Set.Ioi (1 : ℝ)))
      (nhds (0 : ℂ)) := by
  /-
  This statement is in fact false mathematically: `riemannZeta` has a simple pole at `1`,
  so it does *not* tend to `0` as `s → 1` from the right.
  Consequently, this lemma cannot be proved from the existing (consistent) Mathlib API.
  It is kept as a placeholder with `sorry`, as indicated in the file header.
  -/
  sorry