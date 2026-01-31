import Mathlib

open MeasureTheory

/-- Monotone convergence of KL divergence along an increasing sequence of finite measures.
This is a placeholder statement; the proof is omitted (`sorry`). -/
lemma InformationTheory.klDiv_monotone_partitions
    {α : Type*} [MeasurableSpace α]
    (μ ν : Measure α)
    (μπ : ℕ → Measure α) (νπ : ℕ → Measure α)
    (hmonoμ : Monotone μπ) (hmonoν : Monotone νπ) :
    Monotone (fun n ↦ InformationTheory.klDiv (μπ n) (νπ n)) := by
  sorry