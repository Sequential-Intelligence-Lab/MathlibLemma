import Mathlib

lemma pow_gcd_mem_subgroup {G : Type*} [Group G] (S : Subgroup G)
    {x : G} {m n : ℕ}
    (hm : x ^ m ∈ S) (hn : x ^ n ∈ S) :
    x ^ Nat.gcd m n ∈ S := by
  -- Let a, b be the Bézout coefficients for gcd(m, n)
  let a : ℤ := Nat.gcdA m n
  let b : ℤ := Nat.gcdB m n
  have hBezout :
      (Nat.gcd m n : ℤ) = m * a + n * b :=
    Nat.gcd_eq_gcd_ab m n

  -- First show membership for the ℤ-power x ^ (gcd m n : ℤ)
  have hx_int : x ^ (Nat.gcd m n : ℤ) ∈ S := by
    -- Rewrite x^(gcd) using the Bézout identity and zpow laws
    have hx_eq :
        x ^ (Nat.gcd m n : ℤ)
          = (x ^ m : G) ^ a * (x ^ n : G) ^ b := by
      calc
        x ^ (Nat.gcd m n : ℤ)
            = x ^ (m * a + n * b : ℤ) := by
                simpa [hBezout]
        _ = x ^ (m * a : ℤ) * x ^ (n * b : ℤ) := by
                simpa [zpow_add]
        _ = (x ^ m : G) ^ a * (x ^ n : G) ^ b := by
                -- Turn x^(m*a) into (x^m)^a and similarly for n, b
                simp [zpow_mul, zpow_ofNat]
    -- Now use subgroup closure under zpow and multiplication
    have hm' : (x ^ m : G) ^ a ∈ S := S.zpow_mem hm a
    have hn' : (x ^ n : G) ^ b ∈ S := S.zpow_mem hn b
    have hprod : (x ^ m : G) ^ a * (x ^ n : G) ^ b ∈ S :=
      S.mul_mem hm' hn'
    -- Transport membership back via the equality hx_eq
    simpa [hx_eq] using hprod

  -- Convert back from ℤ-power to ℕ-power using zpow_ofNat
  simpa [zpow_ofNat] using hx_int