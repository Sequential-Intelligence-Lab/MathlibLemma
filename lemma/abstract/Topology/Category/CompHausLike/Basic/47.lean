import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CompHausLike.snd_continuous
    {P : TopCat.{u} → Prop}
    (X Y : CompHausLike P)
    (hP : P (X.toTop ⨯ Y.toTop)) :
    Continuous (fun p : (X × Y) => p.2) := by
  -- Apply the `continuous_snd` lemma to conclude the continuity of the second projection.
  apply continuous_snd