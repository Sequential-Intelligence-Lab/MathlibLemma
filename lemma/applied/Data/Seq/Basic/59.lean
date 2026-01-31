import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

lemma Seq1.join_toSeq
    (S : Seq1 (Seq1 α)) :
    Seq1.toSeq (Seq1.join S)
      = Seq.join (Seq.cons S.1 S.2) := by
  have h_main : Seq1.toSeq (Seq1.join S) = Seq.join (Seq.cons S.1 S.2) := by
    sorry
  exact h_main