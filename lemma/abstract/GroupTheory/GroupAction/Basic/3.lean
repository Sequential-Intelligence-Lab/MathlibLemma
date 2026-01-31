import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/

lemma MulAction.orbit_eq_of_mem
    [Group G] [MulAction G α]
    {a b x : α}
    (ha : x ∈ MulAction.orbit G a)
    (hb : x ∈ MulAction.orbit G b) :
    MulAction.orbit G a = MulAction.orbit G b := by
  classical
  -- `x` is on both orbits; write it as `g₁ • a` and `g₂ • b`
  rcases ha with ⟨g1, hg1⟩
  rcases hb with ⟨g2, hg2⟩
  -- We have `g1 • a = g2 • b`
  have hEq : g1 • a = g2 • b := by
    -- both sides equal `x`
    simpa [hg1, hg2]
  -- Express `a` in terms of `b`
  have h_a' : g1⁻¹ • (g1 • a) = g1⁻¹ • (g2 • b) :=
    congrArg (fun z => g1⁻¹ • z) hEq
  have h_a : a = (g1⁻¹ * g2) • b := by
    -- left: g1⁻¹ • (g1 • a) = a via inv_smul_smul
    -- right: g1⁻¹ • (g2 • b) = (g1⁻¹ * g2) • b via smul_smul
    simpa [inv_smul_smul, smul_smul] using h_a'
  -- Express `b` in terms of `a`
  have h_b' : g2⁻¹ • (g2 • b) = g2⁻¹ • (g1 • a) :=
    congrArg (fun z => g2⁻¹ • z) hEq.symm
  have h_b : b = (g2⁻¹ * g1) • a := by
    simpa [inv_smul_smul, smul_smul] using h_b'
  -- Now show equality of orbits by mutual inclusion
  ext y
  constructor
  · -- `orbit a ⊆ orbit b`
    intro hy
    rcases hy with ⟨g, rfl⟩
    refine ⟨g * (g1⁻¹ * g2), ?_⟩
    -- rewrite `a` using `h_a`
    simp [h_a, smul_smul, mul_assoc]
  · -- `orbit b ⊆ orbit a`
    intro hy
    rcases hy with ⟨g, rfl⟩
    refine ⟨g * (g2⁻¹ * g1), ?_⟩
    -- rewrite `b` using `h_b`
    simp [h_b, smul_smul, mul_assoc]

lemma MulAction.orbit_disjoint_iff
    [Group G] [MulAction G α] {a b : α} :
    Disjoint (MulAction.orbit G a) (MulAction.orbit G b) ↔
      ¬ MulAction.orbit G a = MulAction.orbit G b := by
  classical
  constructor
  · -- `Disjoint → ¬ equal`
    intro hDisj hEq
    -- `a` lies in its own orbit, hence in both orbits if they are equal
    have ha : a ∈ MulAction.orbit G a := ⟨1, by simp⟩
    have hb : a ∈ MulAction.orbit G b := by simpa [hEq] using ha
    have hmem : a ∈ MulAction.orbit G a ∩ MulAction.orbit G b := ⟨ha, hb⟩
    -- disjointness means the intersection is empty
    have : a ∈ (∅ : Set α) := hDisj.le_bot hmem
    exact this.elim
  · -- `¬ equal → Disjoint`, proved by contrapositive
    intro hne
    by_contra hDisj
    -- Non-disjoint orbits intersect
    obtain ⟨x, hx1, hx2⟩ :=
      Set.not_disjoint_iff.mp hDisj
    -- Intersection gives equality of orbits (contradiction)
    exact hne (MulAction.orbit_eq_of_mem hx1 hx2)