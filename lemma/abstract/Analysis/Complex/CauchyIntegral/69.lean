import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Complex.closed_preimage_ray
    {f : ℂ → ℂ} (hf : Continuous f) (a : ℂ) :
    IsClosed (f ⁻¹' {z | a.re ≤ z.re}) :=
by
  have h1 : IsClosed {z : ℂ | a.re ≤ z.re} := by
    have h : {z : ℂ | a.re ≤ z.re} = (fun z : ℂ => z.re) ⁻¹' Set.Ici (a.re) := by
      ext z
      simp [Set.mem_Ici]
      <;>
      simp_all [Complex.ext_iff]
      <;>
      norm_cast
      <;>
      linarith
    rw [h]
    -- Use the fact that the preimage of a closed set under a continuous function is closed
    apply IsClosed.preimage
    · -- Prove that the function (fun z : ℂ => z.re) is continuous
      continuity
    · -- Prove that Set.Ici (a.re) is closed
      exact isClosed_Ici
  
  have h2 : IsClosed (f ⁻¹' {z : ℂ | a.re ≤ z.re}) := by
    have h3 : IsClosed (f ⁻¹' {z : ℂ | a.re ≤ z.re}) := h1.preimage hf
    exact h3
  
  exact h2