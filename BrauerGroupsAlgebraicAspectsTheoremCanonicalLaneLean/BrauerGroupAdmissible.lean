import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.BrauerGroupDefinition
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.CentralSimpleAlgebra
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.BrauerEquivalence

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerAdmissibleClass (K : Type) [Field K] where
  brauer_group : BrauerGroup K
  csa : CentralSimpleAlgebra K
  equivalence : BrauerEquivalence K csa csa
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BrauerAdmittedClosure (K : Type) [Field K] (A : BrauerAdmissibleClass K) : Prop :=
  BrauerGroupClosed K A.brauer_group ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse