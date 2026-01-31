import Mathlib

lemma Real.log_prod_abs {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ a ∈ s, f a ≠ 0) :
    Real.log |s.prod f| = s.sum (fun a => Real.log |f a|) := by
  classical
  -- We prove the statement by induction on `s`,
  -- with the non-vanishing hypothesis as a parameter.
  revert hf
  refine Finset.induction ?base ?step s
  · -- Base case: `s = ∅`
    intro hf
    simp
  · -- Induction step: from `s` to `insert a s`
    intro a s ha IH hf_insert
    -- Non-vanishing of `f a`
    have hfa_ne : f a ≠ 0 :=
      hf_insert a (by simp)
    -- Non-vanishing of `f` on `s`
    have hf_s : ∀ b ∈ s, f b ≠ 0 := by
      intro b hb
      exact hf_insert b (by simp [hb])
    -- Non-vanishing of the product over `s`
    have hprod_ne : s.prod f ≠ 0 :=
      Finset.prod_ne_zero_iff.mpr hf_s
    -- Positivity of |f a| and |s.prod f|
    have hfa_pos : 0 < |f a| := abs_pos.mpr hfa_ne
    have hprod_pos : 0 < |s.prod f| := abs_pos.mpr hprod_ne
    -- Convert to nonzero hypotheses for `Real.log_mul`
    have hfa_abs_ne   : |f a| ≠ 0 := ne_of_gt hfa_pos
    have hprod_abs_ne : |s.prod f| ≠ 0 := ne_of_gt hprod_pos
    -- Induction hypothesis specialized to `hf_s`
    have IH' : Real.log |s.prod f| = s.sum (fun b => Real.log |f b|) :=
      IH hf_s
    -- Main calculation
    calc
      Real.log |(insert a s).prod f|
          = Real.log |f a * s.prod f| := by
              simp [Finset.prod_insert, ha]
      _ = Real.log (|f a| * |s.prod f|) := by
              simp [abs_mul]
      _ = Real.log |f a| + Real.log |s.prod f| := by
              simpa using Real.log_mul hfa_abs_ne hprod_abs_ne
      _ = Real.log |f a| + s.sum (fun b => Real.log |f b|) := by
              simpa [IH']
      _ = (insert a s).sum (fun b => Real.log |f b|) := by
              simp [Finset.sum_insert, ha, add_comm, add_left_comm, add_assoc]