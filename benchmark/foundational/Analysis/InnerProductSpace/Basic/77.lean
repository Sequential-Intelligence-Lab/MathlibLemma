import Mathlib

open scoped ComplexOrder RealInnerProductSpace

open scoped BigOperators

open scoped InnerProductSpace

lemma inner_add_right_iff {𝕜 E : Type*}
    [RCLike 𝕜] [SeminormedAddCommGroup E] [Inner 𝕜 E] [InnerProductSpace 𝕜 E]
    {x y z w : E} :
    ⟪x, y + z⟫_𝕜 = ⟪x, y + w⟫_𝕜 ↔ ⟪x, z⟫_𝕜 = ⟪x, w⟫_𝕜 := by
  sorry