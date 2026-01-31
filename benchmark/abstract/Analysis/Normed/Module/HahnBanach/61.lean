import Mathlib

/-! ### A continuous linear functional separates a closed convex set and a point -/

lemma exists_dual_vector_separating_cone
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (K : Set E) (hconv : Convex ℝ K) (hclosed : IsClosed K)
    {x : E} (hx : x ∉ K) :
    ∃ f : E →L[ℝ] ℝ, ∀ ⦃y : E⦄, y ∈ K → f y ≤ f x := by
  sorry