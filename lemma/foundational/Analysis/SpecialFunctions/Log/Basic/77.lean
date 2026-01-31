import Mathlib

lemma Real.integrable_on_log_Icc {a b : ℝ}
    (ha : 0 < a) (hb : a < b) :
    MeasureTheory.IntegrableOn Real.log (Set.Icc a b) := by
  -- `[a, b]` is contained in `{0}ᶜ`, since every point is ≥ a > 0.
  have hsubset' : Set.Icc a b ⊆ ({0}ᶜ : Set ℝ) := by
    intro x hx
    have hx_pos : 0 < x := lt_of_lt_of_le ha hx.1
    exact ne_of_gt hx_pos
  -- `log` is continuous on `{0}ᶜ`, so in particular on `[a, b]`.
  have hcont : ContinuousOn Real.log (Set.Icc a b) :=
    (Real.continuousOn_log).mono hsubset'
  -- `[a, b]` is compact.
  have hcompact : IsCompact (Set.Icc a b) := isCompact_Icc
  -- A continuous function on a compact set is integrable there.
  exact hcont.integrableOn_compact hcompact