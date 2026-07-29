import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerAdmittedObject where
  field : Type
  characteristicZero : Prop
  brauerGroup : Type
  brauerGroupAbelian : Prop
  conclusion : brauerGroupAbelian

structure AdmissibleClass where
  object : BrauerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BrauerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse