import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

-- 44. Lipschitz regularity of distance function to a closed set in a pseudometric space
lemma lipschitzWith_dist_toSet
    {E : Type*}
    [PseudoMetricSpace E]
    (s : Set E) (hs : IsClosed s) :
    LipschitzWith 1 (fun x => sInf (Set.image (fun y : E => dist x y) s)) := by
  sorry