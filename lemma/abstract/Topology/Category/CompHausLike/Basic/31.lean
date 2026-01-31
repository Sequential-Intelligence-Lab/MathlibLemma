import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CompHausLike.isoOfBijective_inv_bijective
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P}
    (f : X ⟶ Y) (hf : Function.Bijective f) :
    Function.Bijective (CompHausLike.isoOfBijective (P := P) f hf).inv := by
  have h : Function.Bijective (CompHausLike.isoOfBijective (P := P) f hf).inv := by
    -- Assuming that `isoOfBijective` creates an isomorphism whose inverse is the actual inverse of `f`
    -- and that the inverse of a bijective function is bijective.
    sorry
  exact h