import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.isBoundedUnder_on_compact
    (hf : ConvexOn ℝ C f)
    (hC : IsCompact C)
    [DecidablePred (· ∈ C)] :
    (Filter.cocompact E).IsBoundedUnder (· ≤ ·) (fun x => if x ∈ C then f x else 0) := by
  sorry