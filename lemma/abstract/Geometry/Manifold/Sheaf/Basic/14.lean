import Mathlib

universe u v w

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type v} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_section_res_spec
    (hG : LocalInvariantProp G G' P)
    {U V : Opens (TopCat.of M)} (hUV : U ≤ V)
    (f : (hG.sheaf M M').val.obj (op V)) :
    ChartedSpace.LiftProp P
      ((hG.sheaf M M').val.map (homOfLE hUV).op f : _) := by
  -- Make the subtype structure explicit
  change ChartedSpace.LiftProp P
    (((hG.sheaf M M').val.map (homOfLE hUV).op f).val)
  -- Use the `property` field of the resulting subtype element
  simpa using
    ((hG.sheaf M M').val.map (homOfLE hUV).op f).property