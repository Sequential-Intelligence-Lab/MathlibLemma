import Mathlib

open Filter Topology

/-- If a sequence is Cauchy and has a convergent subsequence, then the sequence converges
to the same limit. -/
lemma CauchySeq.tendsto_of_subseq_tendsto {X : Type*} [MetricSpace X]
    {u : ℕ → X} (hc : CauchySeq u)
    {φ : ℕ → ℕ} (hφ : StrictMono φ)
    {x : X} (hsub : Tendsto (fun n => u (φ n)) atTop (nhds x)) :
    Tendsto u atTop (nhds x) := by
  sorry