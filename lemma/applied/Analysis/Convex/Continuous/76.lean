import Mathlib

variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.bound_of_mem_segment
    (hf : ConvexOn ℝ C f)
    {x y z} (hx : x ∈ C) (hy : y ∈ C) (hz : z ∈ segment ℝ x y) :
    f z ≤ max (f x) (f y) := by
  -- expand membership in the segment
  rcases hz with ⟨a, b, ha, hb, h_ab, rfl⟩
  -- convexity inequality
  have hconv : f (a • x + b • y) ≤ a * f x + b * f y :=
    hf.2 hx hy ha hb h_ab
  -- bound the convex combination by the max
  have hbound : a * f x + b * f y ≤ max (f x) (f y) := by
    -- compare f x and f y
    rcases le_total (f x) (f y) with hxy | hyx
    · -- Case f x ≤ f y: max = f y
      -- from a + b = 1 and 0 ≤ a, 0 ≤ b we get b ≤ 1
      have hb_le1 : b ≤ (1 : ℝ) := by
        have : a + b = (1 : ℝ) := h_ab
        linarith
      -- δ := f y - f x ≥ 0
      have hδ_nonneg : 0 ≤ f y - f x := sub_nonneg.mpr hxy
      -- b * δ ≤ 1 * δ
      have hmul : b * (f y - f x) ≤ 1 * (f y - f x) :=
        mul_le_mul_of_nonneg_right hb_le1 hδ_nonneg
      -- add f x to both sides
      have hmul' := add_le_add_left hmul (f x)
      -- express a in terms of b
      have hab : a = 1 - b := by
        have := h_ab
        linarith
      -- rewrite to get the desired inequality a * f x + b * f y ≤ f y
      have h_le_fy : a * f x + b * f y ≤ f y := by
        -- Left: a * f x + b * f y = f x + b * (f y - f x)
        -- Right: f y = f x + 1 * (f y - f x)
        simpa [hab, sub_eq_add_neg, add_comm, add_left_comm, add_assoc,
               mul_add, add_mul, mul_comm, mul_left_comm, mul_assoc] using hmul'
      -- and f y ≤ max (f x) (f y)
      have hfy_le_max : f y ≤ max (f x) (f y) := by
        simpa [max_eq_right hxy] using (le_of_eq rfl : f y ≤ f y)
      exact h_le_fy.trans hfy_le_max
    · -- Case f y ≤ f x: max = f x
      -- from a + b = 1 and 0 ≤ a, 0 ≤ b we get a ≤ 1
      have ha_le1 : a ≤ (1 : ℝ) := by
        have : a + b = (1 : ℝ) := h_ab
        linarith
      -- δ := f x - f y ≥ 0
      have hδ_nonneg : 0 ≤ f x - f y := sub_nonneg.mpr hyx
      -- a * δ ≤ 1 * δ
      have hmul : a * (f x - f y) ≤ 1 * (f x - f y) :=
        mul_le_mul_of_nonneg_right ha_le1 hδ_nonneg
      -- add f y to both sides
      have hmul' := add_le_add_left hmul (f y)
      -- express b in terms of a
      have hba : b = 1 - a := by
        have := h_ab
        linarith
      -- rewrite to get the desired inequality a * f x + b * f y ≤ f x
      have h_le_fx : a * f x + b * f y ≤ f x := by
        -- Left: a * f x + b * f y = f y + a * (f x - f y)
        -- Right: f x = f y + 1 * (f x - f y)
        simpa [hba, sub_eq_add_neg, add_comm, add_left_comm, add_assoc,
               mul_add, add_mul, mul_comm, mul_left_comm, mul_assoc] using hmul'
      -- and f x ≤ max (f x) (f y)
      have hfx_le_max : f x ≤ max (f x) (f y) := by
        simpa [max_eq_left hyx] using (le_of_eq rfl : f x ≤ f x)
      exact h_le_fx.trans hfx_le_max
  -- combine convexity bound and max bound
  exact le_trans hconv hbound