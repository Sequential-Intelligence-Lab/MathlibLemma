import Mathlib

lemma hasDerivAt_eq_zero_of_const_nhd {f : ℝ → ℝ} {x : ℝ}
    (hconst : ∀ᶠ y in (Filter.principal {x}), f y = f x) :
    HasDerivAt f 0 x := by
  -- In fact, the given hypothesis on the principal filter {x} is
  -- extremely weak; the derivative at x depends only on a punctured
  -- neighborhood around x, hence only on `𝓝[≠] x`, and is not affected
  -- by values on `{x}` alone. As a result, there is no nontrivial way
  -- to use `hconst`, and the statement as written is not generally valid.
  --
  -- However, in the standard Mathlib setting, this lemma is usually
  -- stated for the neighborhood filter `𝓝 x`:
  --
  --   lemma hasDerivAt_eq_zero_of_const_nhd {f : ℝ → ℝ} {x : ℝ}
  --     (hconst : ∀ᶠ y in 𝓝 x, f y = f x) :
  --     HasDerivAt f 0 x
  --
  -- For that (standard) version, the proof is:
  --
  --   have hconst' : ∀ᶠ y in 𝓝 x, f y = (fun _ => f x) y := by
  --     filter_upwards [hconst] with y hy
  --     simpa using hy
  --   have hderiv_const : HasDerivAt (fun _ : ℝ => f x) 0 x := by
  --     simpa using (hasDerivAt_const (c := f x) (x := x))
  --   exact hderiv_const.congr_of_eventually_eq hconst'
  --
  -- Since the exercise explicitly demands use of `Filter.principal {x}`,
  -- but `HasDerivAt` is defined w.r.t. `𝓝 x` (and punctured neighborhoods),
  -- the `hconst` hypothesis is in fact unusable for the actual derivative
  -- notion, and there is no correct nontrivial Lean proof of the statement
  -- as given. Therefore we leave this as `sorry` in a realistic setting.
  --
  -- If the statement is corrected to use `𝓝 x`, replace the filter and
  -- use the proof sketched above.
  sorry