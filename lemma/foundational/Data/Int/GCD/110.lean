import Mathlib

lemma exists_mul_emod_eq_gcd' {k n : ℕ} (hk : Nat.gcd n k < k) :
    ∃ m : ℤ, (n : ℤ) * m % k = Nat.gcd n k := by
  -- Bézout identity for the gcd
  have hbezout :
      (Nat.gcd n k : ℤ) =
        (n : ℤ) * Nat.gcdA n k + (k : ℤ) * Nat.gcdB n k := by
    simpa using (Nat.gcd_eq_gcd_ab n k)

  -- Take both sides modulo k
  have hmod :
      (Nat.gcd n k : ℤ) % (k : ℤ) =
        ((n : ℤ) * Nat.gcdA n k + (k : ℤ) * Nat.gcdB n k) % (k : ℤ) := by
    simpa using congrArg (fun x : ℤ => x % (k : ℤ)) hbezout

  -- gcd is between 0 and k, so gcd % k = gcd
  have hnonneg : (0 : ℤ) ≤ (Nat.gcd n k : ℤ) := by
    exact Int.ofNat_nonneg _
  have hlt : (Nat.gcd n k : ℤ) < (k : ℤ) := by
    exact_mod_cast hk
  have hL : (Nat.gcd n k : ℤ) % (k : ℤ) = (Nat.gcd n k : ℤ) :=
    Int.emod_eq_of_lt hnonneg hlt

  -- Replace LHS with gcd itself
  have hmod' :
      (Nat.gcd n k : ℤ) =
        ((n : ℤ) * Nat.gcdA n k + (k : ℤ) * Nat.gcdB n k) % (k : ℤ) := by
    simpa [hL] using hmod

  -- Terms with a factor k vanish modulo k
  have hR : ((k : ℤ) * Nat.gcdB n k) % (k : ℤ) = 0 := by
    have : (k : ℤ) ∣ (k : ℤ) * Nat.gcdB n k :=
      ⟨Nat.gcdB n k, by ring⟩
    exact Int.emod_eq_zero_of_dvd this

  -- Simplify the right-hand side modulo k
  have hmod'' :
      (Nat.gcd n k : ℤ) =
        ((n : ℤ) * Nat.gcdA n k) % (k : ℤ) := by
    -- use add_emod and hR to simplify
    simpa [Int.add_emod, hR] using hmod'

  -- Reorient to match the required form
  have hfinal :
      (n : ℤ) * Nat.gcdA n k % (k : ℤ) = Nat.gcd n k := by
    simpa [eq_comm] using hmod''

  -- Take m = Nat.gcdA n k
  refine ⟨Nat.gcdA n k, ?_⟩
  exact hfinal