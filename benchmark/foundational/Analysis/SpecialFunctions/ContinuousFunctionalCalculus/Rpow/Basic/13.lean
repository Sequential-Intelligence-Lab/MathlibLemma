import Mathlib

lemma NNReal.continuousOn_nnrpow (s : Set NNReal) (y : NNReal) :
    ContinuousOn (fun x => NNReal.nnrpow x y) s := by
  sorry