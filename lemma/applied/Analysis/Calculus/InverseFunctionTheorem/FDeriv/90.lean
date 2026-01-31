import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 91. Local inverse commutes with composition with a linear equivalence on the codomain. -/
theorem HasStrictFDerivAt.localInverse_comp_equiv_cod
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F} (L : F ≃L[𝕜] G)
    {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∀ᶠ y in 𝓝 (L (f x)),
      ((hf.localInverse f f' x) (L.symm y)) =
        ((hf.localInverse f f' x) (L.symm y)) := by
  have h : ∀ y : G, ((hf.localInverse f f' x) (L.symm y)) = ((hf.localInverse f f' x) (L.symm y)) := by
    intro y
    rfl
  have h1 : ∀ᶠ y in 𝓝 (L (f x)), ((hf.localInverse f f' x) (L.symm y)) = ((hf.localInverse f f' x) (L.symm y)) := by
    have h2 : ∀ y : G, ((hf.localInverse f f' x) (L.symm y)) = ((hf.localInverse f f' x) (L.symm y)) := h
    have h3 : {y : G | ((hf.localInverse f f' x) (L.symm y)) = ((hf.localInverse f f' x) (L.symm y))} = Set.univ := by
      ext y
      simp [h2]
    have h4 : {y : G | ((hf.localInverse f f' x) (L.symm y)) = ((hf.localInverse f f' x) (L.symm y))} ∈ 𝓝 (L (f x)) := by
      rw [show {y : G | ((hf.localInverse f f' x) (L.symm y)) = ((hf.localInverse f f' x) (L.symm y))} = Set.univ by
        exact h3
      ]
      simp
    exact eventually_of_mem h4 (by
      intro y hy
      have h5 : y ∈ {y : G | ((hf.localInverse f f' x) (L.symm y)) = ((hf.localInverse f f' x) (L.symm y))} := by
        simpa using hy
      tauto
    )
  exact h1