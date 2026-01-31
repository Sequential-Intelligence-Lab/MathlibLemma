import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConcaveOn.sub_const (hf : ConcaveOn ℝ C f) (c : ℝ) :
    ConcaveOn ℝ C (fun x => f x - c) := by
  -- reuse convexity of C
  refine ⟨hf.1, ?_⟩
  intro x hx y hy a b ha hb hsum
  -- concavity of f
  have hfineq : f (a • x + b • y) ≥ a * f x + b * f y :=
    hf.2 hx hy ha hb hsum
  -- subtract c on both sides
  have hsub : f (a • x + b • y) - c ≥ a * f x + b * f y - c :=
    sub_le_sub_right hfineq c
  -- rewrite RHS in terms of (f x - c) and (f y - c)
  have hrw :
      a * (f x - c) + b * (f y - c) = a * f x + b * f y - c := by
    calc
      a * (f x - c) + b * (f y - c)
          = (a * f x - a * c) + (b * f y - b * c) := by
                simp [mul_sub]
      _ = (a * f x + b * f y) - (a * c + b * c) := by
                ring_nf
      _ = (a * f x + b * f y) - (a + b) * c := by
                ring_nf
      _ = (a * f x + b * f y) - 1 * c := by
                simpa [hsum]
      _ = a * f x + b * f y - c := by
                simp
  -- conclude
  simpa [hrw] using hsub