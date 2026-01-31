import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma Real.arith_mean_le_geom_mean_of_prod_eq_one
    {ι : Type _} (s : Finset ι)
    (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hs : s.Nonempty)
    (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 < z i)
    (hprod : ∏ i ∈ s, z i ^ (w i) = 1) :
    ∑ i ∈ s, w i * z i ≥ 1 := by
  have h1 : ∏ i ∈ s, z i ^ (w i) ≤ ∑ i ∈ s, w i * z i := by
    apply Real.geom_mean_le_arith_mean_weighted
    all_goals
      try { 
        intro i hi
        have hw_i : 0 ≤ w i := hw i hi
        have hz_i : 0 ≤ z i := by
          have h4 : 0 < z i := hz i hi
          linarith
        try { exact hw_i }
        try { exact hz_i }
      }
    all_goals
      try { 
        exact hw'
      }
    all_goals
      try { 
        exact hw
      }
  have h2 : ∏ i ∈ s, z i ^ (w i) = 1 := hprod
  have h3 : 1 ≤ ∑ i ∈ s, w i * z i := by
    calc
      1 = ∏ i ∈ s, z i ^ (w i) := by rw [hprod]
      _ ≤ ∑ i ∈ s, w i * z i := h1
  linarith