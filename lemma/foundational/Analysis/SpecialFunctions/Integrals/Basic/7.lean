import Mathlib

lemma integral_odd_function (a : ℝ) (f : ℝ → ℝ)
    (hf : ∀ x, f (-x) = - f x)
    (hint : IntervalIntegrable f volume (-a) a) :
    ∫ x in -a..a, f x = 0 := by
  -- Change of variable x ↦ -x
  have h1 : ∫ x in -a..a, f (-x) = ∫ x in -a..a, f x := by
    simpa using intervalIntegral.integral_comp_neg f (-a) a
  -- Use oddness: f (-x) = - f x
  have hfun : (fun x => f (-x)) = fun x => - f x := by
    funext x
    simpa [hf x]
  -- Integral of the negated function
  have h2 : ∫ x in -a..a, f (-x) = - ∫ x in -a..a, f x := by
    -- intervalIntegral.integral_neg uses the given integrability hypothesis
    simpa [hfun] using
      (intervalIntegral.integral_neg (f := f) (a := -a) (b := a) hint)
  -- Combine equalities to get I = -I
  have hIeq : ∫ x in -a..a, f x = - ∫ x in -a..a, f x := by
    have h1' : ∫ x in -a..a, f x = ∫ x in -a..a, f (-x) := by
      simpa using h1.symm
    exact h1'.trans h2
  -- From I = -I, deduce I = 0
  have hsum : (∫ x in -a..a, f x) + ∫ x in -a..a, f x = 0 :=
    (eq_neg_iff_add_eq_zero).mp hIeq
  have hzero : ∫ x in -a..a, f x = 0 :=
    add_self_eq_zero.mp hsum
  exact hzero