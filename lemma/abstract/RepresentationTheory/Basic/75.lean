import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 76. Action on hom-space preserves rank of linear maps
lemma Representation.linHom_preserves_rank
    {k G V W : Type*} [Field k] [Group G]
    [Fintype G] [AddCommGroup V] [Module k V]
    [AddCommGroup W] [Module k W]
    (ρV : Representation k G V)
    (ρW : Representation k G W)
    (g : G) (f : V →ₗ[k] W) :
    Module.finrank k (LinearMap.range ((Representation.linHom ρV ρW g) f)) =
    Module.finrank k (LinearMap.range f) := by
  sorry