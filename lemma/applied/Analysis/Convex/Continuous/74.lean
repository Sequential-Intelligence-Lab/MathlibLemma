import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.between_values
    (hf : ConvexOn ℝ C f)
    (hC : Convex ℝ C)
    {x y} (hx : x ∈ C) (hy : y ∈ C) {t : ℝ} (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    f (t • x + (1 - t) • y) ≤ max (f x) (f y) := by
  -- From `t ≤ 1`, get `0 ≤ 1 - t`
  have h1mt : 0 ≤ 1 - t := sub_nonneg.mpr ht1
  -- Sum of coefficients equals 1
  have hsum : t + (1 - t) = (1 : ℝ) := by ring
  -- Use convexity of `f` on `C` to bound by the convex combination of values
  have hconv :
      f (t • x + (1 - t) • y)
        ≤ t * f x + (1 - t) * f y :=
    hf.2 hx hy ht h1mt hsum
  -- Now show this convex combination is bounded above by `max (f x) (f y)`
  have hmax :
      t * f x + (1 - t) * f y ≤ max (f x) (f y) := by
    -- Case analysis on which of `f x`, `f y` is larger
    by_cases hxy : f x ≤ f y
    · -- then `max (f x) (f y) = f y`
      have hmax_eq : max (f x) (f y) = f y := max_eq_right hxy
      have htx : t * f x ≤ t * f y :=
        mul_le_mul_of_nonneg_left hxy ht
      have : t * f x + (1 - t) * f y ≤ t * f y + (1 - t) * f y :=
        add_le_add_right htx _
      calc
        t * f x + (1 - t) * f y
            ≤ t * f y + (1 - t) * f y := this
        _ = (t + (1 - t)) * f y := by ring
        _ = f y := by simpa [hsum]
        _ = max (f x) (f y) := hmax_eq.symm
    · -- otherwise, `f y < f x`, so `max (f x) (f y) = f x`
      have hyx : f y ≤ f x := le_of_lt (lt_of_not_ge hxy)
      have hmax_eq : max (f x) (f y) = f x := max_eq_left hyx
      have hty : (1 - t) * f y ≤ (1 - t) * f x :=
        mul_le_mul_of_nonneg_left hyx h1mt
      have : t * f x + (1 - t) * f y ≤ t * f x + (1 - t) * f x :=
        add_le_add_left hty _
      calc
        t * f x + (1 - t) * f y
            ≤ t * f x + (1 - t) * f x := this
        _ = (t + (1 - t)) * f x := by ring
        _ = f x := by simpa [hsum]
        _ = max (f x) (f y) := hmax_eq.symm
  exact le_trans hconv hmax