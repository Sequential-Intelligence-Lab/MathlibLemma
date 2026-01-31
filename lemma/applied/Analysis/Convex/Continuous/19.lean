import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConcaveOn.const_add (hf : ConcaveOn ℝ C f) (c : ℝ) :
    ConcaveOn ℝ C (fun x => c + f x) := by
  -- Unpack the concavity of `f`
  rcases hf with ⟨hC, hf'⟩
  refine ⟨hC, ?_⟩
  intro x hx y hy a b ha hb hsum
  -- Inequality from concavity of `f`
  have hfineq := hf' hx hy ha hb hsum
  -- Add `c` to both sides of the inequality
  have hfineq' :
      c + (a * f x + b * f y) ≤ c + f (a • x + b • y) :=
    add_le_add_left hfineq c
  -- Algebraic rearrangement and conclusion
  calc
    a * (c + f x) + b * (c + f y)
        = (a + b) * c + (a * f x + b * f y) := by
          ring
    _ = c + (a * f x + b * f y) := by
          -- use a + b = 1 to simplify
          simpa [hsum, add_comm, add_left_comm, add_assoc]
    _ ≤ c + f (a • x + b • y) := hfineq'