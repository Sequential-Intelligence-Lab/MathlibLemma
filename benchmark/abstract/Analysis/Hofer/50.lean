import Mathlib

/-- If a sequence in a metric space has a convergent subsequence and is Cauchy, then the
whole sequence converges to the same limit as that subsequence. -/
lemma CauchySeq.tendsto_of_subseq {X : Type*} [MetricSpace X]
    {u : ℕ → X} (hc : CauchySeq u)
    {φ : ℕ → ℕ} (hφ : StrictMono φ) {x : X}
    (hφlim : Filter.Tendsto (fun n => u (φ n)) Filter.atTop (nhds x)) :
    Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry