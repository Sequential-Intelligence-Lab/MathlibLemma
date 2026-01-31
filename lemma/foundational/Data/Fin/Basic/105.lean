import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.castLE_strictMono {m n : ℕ} (h : m ≤ n) :
    StrictMono (Fin.castLE h) := by
  have h_main : ∀ (i j : Fin m), i < j → Fin.castLE h i < Fin.castLE h j := by
    intro i j hij
    have h₁ : (i : ℕ) < (j : ℕ) := by
      simpa [Fin.ext_iff] using hij
    -- Since i < j in Fin m, their values as natural numbers satisfy i.val < j.val.
    -- Now, we need to show that Fin.castLE h i < Fin.castLE h j in Fin n.
    -- This reduces to checking that (i : ℕ) < (j : ℕ), which we already have.
    have h₂ : Fin.castLE h i < Fin.castLE h j := by
      -- The order in Fin n is inherited from the order of natural numbers.
      -- Therefore, we can directly use the fact that (i : ℕ) < (j : ℕ).
      simp [Fin.castLE, Fin.ext_iff, h₁]
      <;>
      (try omega) <;>
      (try simp_all [Fin.is_lt]) <;>
      (try omega)
    exact h₂
  
  -- Now we use the h_main lemma to prove that Fin.castLE h is strictly monotone.
  exact fun i j hij => h_main i j hij