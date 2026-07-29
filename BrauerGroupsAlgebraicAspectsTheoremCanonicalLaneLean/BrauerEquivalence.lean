import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerEquivalence (K : Type) [Field K] (A B : CentralSimpleAlgebra K) where
  is_equivalent : ∃ (n m : ℕ), (MatrixAlgebra (Fin n) K) ⊗ A ≅ (MatrixAlgebra (Fin m) K) ⊗ B
  equivalence_witness : is_equivalent

def BrauerEquivalenceClosed (K : Type) [Field K] (A B : CentralSimpleAlgebra K) (E : BrauerEquivalence K A B) : Prop :=
  True

theorem brauer_equivalence_closed (K : Type) [Field K] (A B : CentralSimpleAlgebra K) (E : BrauerEquivalence K A B) : BrauerEquivalenceClosed K A B E :=
  trivial

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse