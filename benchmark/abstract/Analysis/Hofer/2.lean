import Mathlib

/-- If a function is Lipschitz with constant `K` and a sequence is Cauchy,
then its image is Cauchy. -/
lemma CauchySeq.comp_lipschitz
  {X Y : Type*} [MetricSpace X] [MetricSpace Y]
  {u : ℕ → X} {f : X → Y} {K : NNReal}
  (hc : CauchySeq u) (hf : LipschitzWith K f) :
  CauchySeq (fun n => f (u n)) := by
  sorry