import Mathlib

lemma Real.log_injOn_Icc (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    Set.InjOn Real.log (Set.Icc a b) := by
  -- First, note that every point in [a, b] is positive since a > 0
  have hsubset : Set.Icc a b ⊆ {x : ℝ | 0 < x} := by
    intro x hx
    -- hx : x ∈ Set.Icc a b, so hx.1 : a ≤ x
    have hx_lower : a ≤ x := hx.1
    exact lt_of_lt_of_le ha hx_lower

  -- Real.log is strictly monotone on the positive reals
  -- In Mathlib this is stated as:
  --   Real.strictMonoOn_log : StrictMonoOn Real.log {x : ℝ | 0 < x}
  have hmono : StrictMonoOn Real.log (Set.Icc a b) :=
    (Real.strictMonoOn_log).mono hsubset

  -- A strictly monotone function on a set is injective on that set
  exact hmono.injOn