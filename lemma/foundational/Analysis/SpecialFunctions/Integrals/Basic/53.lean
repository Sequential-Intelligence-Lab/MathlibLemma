import Mathlib

lemma intervalIntegrable_max (a b : ℝ) (f g : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b)
    (hg : IntervalIntegrable g volume a b) :
    IntervalIntegrable (fun x => max (f x) (g x)) volume a b := by
  classical
  -- `f + g` is interval integrable
  have h_add : IntervalIntegrable (fun x => f x + g x) volume a b :=
    hf.add hg
  -- `f - g` is interval integrable
  have h_sub : IntervalIntegrable (fun x => f x - g x) volume a b :=
    hf.sub hg
  -- `|f - g|` is interval integrable
  have h_abs : IntervalIntegrable (fun x => |f x - g x|) volume a b :=
    h_sub.abs
  -- Sum of `(f + g)` and `|f - g|` is interval integrable
  have h_sum :
      IntervalIntegrable
        (fun x => (f x + g x) + |f x - g x|) volume a b :=
    h_add.add h_abs
  -- Multiply by 1/2 to get the usual formula for max
  have h_half :
      IntervalIntegrable
        (fun x => ((f x + g x) + |f x - g x|) / 2) volume a b :=
  by
    -- use mul_const then rewrite `(1/2) * ...` as `... / 2`
    have := h_sum.mul_const (1 / 2 : ℝ)
    -- this has type IntervalIntegrable (fun x => (1 / 2) * ((f x + g x) + |f x - g x|)) _ _ _
    -- now rewrite the integrand
    simpa [one_div, mul_comm, mul_left_comm, mul_assoc,
      div_eq_mul_inv] using this

  -- Show that this integrand is exactly `max (f x) (g x)` pointwise
  have h_eq :
      (fun x => max (f x) (g x)) =
        (fun x => ((f x + g x) + |f x - g x|) / 2) := by
    funext x
    -- Split into two cases depending on the order of `f x` and `g x`
    by_cases h : f x ≤ g x
    · -- In this case, max is `g x`
      have h_max : max (f x) (g x) = g x := max_eq_right h
      -- Here `g x - f x ≥ 0`
      have h_nonneg : 0 ≤ g x - f x := sub_nonneg.mpr h
      have h_abs' : |g x - f x| = g x - f x := abs_of_nonneg h_nonneg
      have h_abs : |f x - g x| = g x - f x := by
        -- use symmetry of abs on subtraction
        simpa [abs_sub_comm] using h_abs'
      have h_two : (f x + g x) + (g x - f x) = 2 * g x := by
        ring
      calc
        max (f x) (g x)
            = g x := by simpa [h_max]
        _ = ((f x + g x) + (g x - f x)) / 2 := by
              simpa [h_two]
        _ = ((f x + g x) + |f x - g x|) / 2 := by
              simpa [h_abs]
    · -- In this case, `g x < f x`, so `g x ≤ f x` and max is `f x`
      have h' : g x ≤ f x := le_of_not_ge h
      have h_max : max (f x) (g x) = f x := max_eq_left h'
      -- Now `f x - g x ≥ 0`
      have h_nonneg : 0 ≤ f x - g x := sub_nonneg.mpr h'
      have h_abs : |f x - g x| = f x - g x := abs_of_nonneg h_nonneg
      have h_two : (f x + g x) + (f x - g x) = 2 * f x := by
        ring
      calc
        max (f x) (g x)
            = f x := by simpa [h_max]
        _ = ((f x + g x) + (f x - g x)) / 2 := by
              simpa [h_two]
        _ = ((f x + g x) + |f x - g x|) / 2 := by
              simpa [h_abs]

  -- Conclude by rewriting via the pointwise equality
  simpa [h_eq] using h_half