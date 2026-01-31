import Mathlib

open scoped Manifold

/-! ### Riemannian distance and basic properties -/

/-- On a real inner product space with its canonical Riemannian metric (which
coincides with the one induced by the inner product), negation is an isometry,
so it preserves the extended distance (`edist`). -/
lemma riemannianEDist_vectorSpace_neg
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y : E) :
    edist x y = edist (-x) (-y) := by
  simpa using (isometry_neg.edist_eq x y).symm