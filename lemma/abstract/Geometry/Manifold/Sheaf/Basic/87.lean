import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

universe u v w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_section_comp_res
    (hG : LocalInvariantProp G G' P)
    {M : Type u} [TopologicalSpace M] [ChartedSpace H M]
    {M' : Type u} [TopologicalSpace M'] [ChartedSpace H' M']
    {U V W : Opens (TopCat.of M)} (hUV : U ≤ V) (hVW : V ≤ W)
    (f : (hG.sheaf M M').val.obj (op W)) (x : U) :
    ((hG.sheaf M M').val.map (homOfLE hUV).op
      ((hG.sheaf M M').val.map (homOfLE hVW).op f) : _) x =
    f ⟨x.1, (hVW (hUV x.2))⟩ := by
  -- Unfold the definition of homOfLE and simplify function composition
  simp [homOfLE, Function.comp]
  -- The equality holds by definition after simplification
  rfl