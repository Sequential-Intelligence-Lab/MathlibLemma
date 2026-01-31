import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma convexOn_dist_left (c : E) :
    ConvexOn ℝ (Set.univ : Set E) (fun x => dist x c) := by
  -- `univ` is convex
  refine ⟨convex_univ, ?_⟩
  -- Jensen inequality for `dist · c`
  intro x hx y hy a b ha hb hsum
  -- First rewrite the argument of `dist` as a sum of scaled differences
  have h_eq :
      (a • x + b • y) - c = a • (x - c) + b • (y - c) := by
    -- Use that `c = (a + b) • c` because `a + b = 1`
    have h1 : (a + b) • c = (1 : ℝ) • c := by simpa [hsum]
    -- Now expand both sides
    calc
      (a • x + b • y) - c
          = a • x + b • y - c := rfl
      _ = a • x + b • y - (a + b) • c := by
            -- replace `c` with `(a + b) • c`
            simpa [one_smul] using congrArg (fun t => a • x + b • y - t) (by
              simpa using h1.symm)
      _ = a • x + b • y - (a • c + b • c) := by
            simp [add_smul]
      _ = (a • x - a • c) + (b • y - b • c) := by
            abel_nf
      _ = a • (x - c) + b • (y - c) := by
            simp [sub_eq_add_neg, smul_add, add_smul, add_comm, add_left_comm, add_assoc]
  -- Now express the distance as a norm and apply triangle inequality
  have hdist :
      dist (a • x + b • y) c = ‖a • (x - c) + b • (y - c)‖ := by
    simp [dist_eq_norm, h_eq]
  -- Use triangle inequality and homogeneity of norm
  have ha' : ‖a‖ = a := by
    simpa [Real.norm_eq_abs, abs_of_nonneg ha]
  have hb' : ‖b‖ = b := by
    simpa [Real.norm_eq_abs, abs_of_nonneg hb]
  calc
    dist (a • x + b • y) c
        = ‖a • (x - c) + b • (y - c)‖ := hdist
    _ ≤ ‖a • (x - c)‖ + ‖b • (y - c)‖ := norm_add_le _ _
    _ = a * dist x c + b * dist y c := by
          simp [dist_eq_norm, norm_smul, ha', hb', mul_comm, mul_left_comm, mul_assoc]