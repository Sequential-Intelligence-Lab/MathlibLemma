import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma VectorFourier.continuous_kernel
  {𝕜 V W : Type*} [CommRing 𝕜]
  [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  (e : AddChar 𝕜 Circle) (he : Continuous e)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜)
  (hL : Continuous fun p : V × W => L p.1 p.2) :
  Continuous (fun p : V × W => (e (-L p.1 p.2) : ℂ)) := by
  have h_neg_L : Continuous (fun p : V × W => (-L p.1 p.2 : 𝕜)) := by
    have h1 : Continuous (fun p : V × W => (L p.1 p.2 : 𝕜)) := hL
    have h2 : Continuous (fun x : 𝕜 => -x) := by
      -- Negation is continuous in a topological ring
      exact continuous_neg
    -- Compose the continuity of L with the continuity of negation
    have h3 : Continuous (fun p : V × W => - (L p.1 p.2 : 𝕜)) :=
      h2.comp h1
    -- Simplify the expression to match the desired form
    convert h3 using 1
    <;> ext p
    <;> simp [neg_mul]
    <;> ring
    <;> simp_all [LinearMap.map_add, LinearMap.map_smul]
    <;> aesop
  
  have h_e_neg_L : Continuous (fun p : V × W => e (-L p.1 p.2)) := by
    -- Use the fact that `e` is continuous and the composition of continuous functions is continuous.
    have h₁ : Continuous (fun p : V × W => (-L p.1 p.2 : 𝕜)) := h_neg_L
    have h₂ : Continuous e := he
    -- Compose the continuity of `e` with the continuity of `p ↦ -L(p.1, p.2)`
    exact h₂.comp h₁
  
  have h_main : Continuous (fun p : V × W => (e (-L p.1 p.2) : ℂ)) := by
    -- The coercion from `Circle` to `ℂ` is continuous because it's a subtype coercion.
    have h₁ : Continuous (fun p : V × W => e (-L p.1 p.2)) := h_e_neg_L
    -- Use the fact that the coercion from `Circle` to `ℂ` is continuous.
    have h₂ : Continuous (fun x : Circle => (x : ℂ)) := by
      apply continuous_subtype_val
    -- Compose the continuity of the function `p ↦ e(-L(p.1, p.2))` with the continuity of the coercion.
    have h₃ : Continuous (fun p : V × W => (e (-L p.1 p.2) : ℂ)) :=
      h₂.comp h₁
    exact h₃
  
  exact h_main