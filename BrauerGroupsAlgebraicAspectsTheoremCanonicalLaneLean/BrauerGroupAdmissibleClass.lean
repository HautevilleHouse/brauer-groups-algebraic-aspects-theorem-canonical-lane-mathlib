import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BrauerAdmittedObject where
  field : Type u
  charZero : Prop
  brauerGroup : Type v
  brauerGroupIsGroup : Prop
  galoisCohomology : Prop
  hasseInvariant : Prop
  periodIndex : Prop
  exponentPeriod : Prop
  conclusion : hasseInvariant ∧ periodIndex ∧ exponentPeriod

structure AdmissibleClass where
  object : BrauerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse