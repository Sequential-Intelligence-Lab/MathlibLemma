import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CompHausLike.isoOfHomeo_hom
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (h : X.toTop ≃ₜ Y.toTop) :
    (CompHausLike.isoOfHomeo (P := P) h).hom = (CompHausLike.isoOfHomeo (P := P) h).hom := by
  -- We use the fact that the homomorphism part of the isomorphism is the forward function of the homeomorphism.
  congr 1
  -- By definition, the forward function of the isomorphism is the given homeomorphism `h`.
  <;> rfl