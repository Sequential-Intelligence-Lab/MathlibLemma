import Mathlib

/-- If a sequence in a metric space is Cauchy and has a subsequence converging to `x`,
then the whole sequence converges to `x`. -/
lemma CauchySeq.tendsto_of_hasSubseq_tendsto
    {X : Type*} [MetricSpace X]
    {u : ℕ → X} (hc : CauchySeq u)
    {φ : ℕ → ℕ} (hφ : StrictMono φ) {x : X}
    (hlim : Filter.Tendsto (fun n => u (φ n)) Filter.atTop (nhds x)) :
    Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry