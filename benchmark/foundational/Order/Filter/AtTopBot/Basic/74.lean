import Mathlib

lemma Filter.tendsto_comp_atTop_nat {α}
    {f : ℕ → ℕ} {g : ℕ → α} {l : Filter α}
    (hf : StrictMono f)
    (hg : Filter.Tendsto g Filter.atTop l) :
    Filter.Tendsto (fun n => g (f n)) Filter.atTop l := by
  sorry
