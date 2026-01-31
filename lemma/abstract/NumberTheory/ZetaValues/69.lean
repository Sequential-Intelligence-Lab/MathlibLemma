import Mathlib

lemma bernoulliFun_tendsto_atTop_ratio (k : ℕ) :
    Filter.Tendsto (fun x : ℝ => bernoulliFun k x / x^(k+1))
      Filter.atTop (Filter.principal {0}) := by
  -- This target filter `principal {0}` would mean the function is
  -- *eventually equal* to 0, i.e. there exists `A` such that for all
  -- `x ≥ A`, `bernoulliFun k x / x^(k+1) = 0`.  This is false for a
  -- nontrivial rational function like this one.
  --
  -- The *correct* statement for the intended analytic limit is that
  -- the function tends to 0 in the usual sense, i.e. towards `𝓝 0`.
  --
  -- So we explain this and then fail with `sorry` to indicate that
  -- the lemma as stated is not provable.

  have : False := by
    -- Sketch: for example, evaluate at integer points.  `bernoulliFun k`
    -- is a polynomial of degree `k`, so `bernoulliFun k n / n^(k+1)` is a
    -- nonzero rational number for infinitely many integers `n`, hence
    -- the function is not eventually 0.
    admit

  exact this.elim