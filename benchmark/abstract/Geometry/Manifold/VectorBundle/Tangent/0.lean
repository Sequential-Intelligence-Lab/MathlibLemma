import Mathlib

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {n : WithTop ℕ∞}

/-! ### Extra lemmas about `contDiffOn_fderiv_coord_change` and coordinate changes -/

/-- A placeholder lemma about differentiability of the derivative of a map.
We do not prove it here and leave it as `sorry`. -/
lemma contDiffAt_fderiv_coord_change
    (j : H → H) {x : H} :
    ContDiffAt 𝕜 n
      (fun y ↦
        fderivWithin 𝕜
          j
          (Set.univ : Set H)
          y)
      x := by
  -- Placeholder: no proof provided
  sorry