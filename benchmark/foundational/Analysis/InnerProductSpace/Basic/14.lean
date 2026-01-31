import Mathlib

lemma inner_zero_left_iff {𝕜 E : Type*} [RCLike 𝕜]
    [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E] {x : E} :
    (∀ y, inner 𝕜 x y = 0) ↔ x = 0 := by
  sorry