import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.sublevelSet_convex
    (hf : ConvexOn ℝ C f) (hC : Convex ℝ C) (r : ℝ) :
    Convex ℝ {x ∈ C | f x ≤ r} := by
  -- unfold the definition of convexity on the sublevel set
  intro x hx y hy a b ha hb hsum
  rcases hx with ⟨hxC, hx_le⟩
  rcases hy with ⟨hyC, hy_le⟩
  -- First, show the combination stays in C using convexity of C from hf
  have h_in_C : a • x + b • y ∈ C :=
    hf.1 hxC hyC ha hb hsum
  -- Next, use convexity of f on C to bound f at the combination
  have h_conv : f (a • x + b • y) ≤ a * f x + b * f y :=
    hf.2 hxC hyC ha hb hsum
  -- Bound the right-hand side by r using hx_le, hy_le and nonnegativity of a, b
  have hax : a * f x ≤ a * r :=
    mul_le_mul_of_nonneg_left hx_le ha
  have hby : b * f y ≤ b * r :=
    mul_le_mul_of_nonneg_left hy_le hb
  have h_sum_le : a * f x + b * f y ≤ r := by
    have h_le : a * f x + b * f y ≤ a * r + b * r :=
      add_le_add hax hby
    have hr : a * r + b * r = r := by
      calc
        a * r + b * r = (a + b) * r := by ring
        _ = 1 * r := by simpa [hsum]
        _ = r := one_mul r
    exact h_le.trans_eq hr
  -- Combine the inequalities
  refine And.intro h_in_C ?_
  exact le_trans h_conv h_sum_le