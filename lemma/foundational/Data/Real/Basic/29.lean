import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.mk_pos_iff {f : CauSeq ℚ abs} :
    0 < Real.mk f ↔ CauSeq.Pos f := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  -- Forward direction: If the real number is positive, then the Cauchy sequence is eventually positive.
  -- We use the fact that the real number is positive to show that the sequence is eventually positive.
  <;> simp_all [CauSeq.Pos, Real.mk_pos]
  -- Reverse direction: If the Cauchy sequence is eventually positive, then the real number is positive.
  -- We use the fact that the sequence is eventually positive to show that the real number is positive.
  <;> exact id