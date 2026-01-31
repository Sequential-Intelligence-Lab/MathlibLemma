import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_symm_of_bilinearForm
    {R : Type*} [Field R]
    {M : Type*} [AddCommGroup M] [Module R M] [FiniteDimensional R M]
    (B : M ≃ₗ[R] Module.Dual R M)
    (f : M →ₗ[R] M)
    (h : ∀ x y, B (f x) y = B x (f y)) :
    LinearMap.trace R M f =
      LinearMap.trace R M (B.symm.toLinearMap.comp (B.toLinearMap.comp f)) := by
  have h_main : B.symm.toLinearMap.comp (B.toLinearMap.comp f) = f := by
    apply LinearMap.ext
    intro x
    have h₁ : (B.symm.toLinearMap.comp (B.toLinearMap.comp f)) x = B.symm (B (f x)) := by
      simp [LinearMap.comp_apply]
    have h₂ : B.symm (B (f x)) = f x := by
      have h₃ : B.symm (B (f x)) = f x := by
        apply LinearEquiv.symm_apply_apply
      exact h₃
    rw [h₁, h₂]
  
  have h_trace : LinearMap.trace R M f = LinearMap.trace R M (B.symm.toLinearMap.comp (B.toLinearMap.comp f)) := by
    rw [h_main]
  
  exact h_trace