import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DesignSpace where
  carrier : Type
  pointSet : Set carrier
  blockCollection : Set (Set carrier)
  incidenceRelation : Prop

structure AdmittedDesign where
  space : DesignSpace
  finiteProjectivePlane : Prop
  symmetricDesign : Prop
  blockSizeConstant : Nat
  lambda : Nat
  conclusion : finiteProjectivePlane ∧ symmetricDesign

structure ProjectivePlaneEndgameState where
  object : AdmittedDesign

def DesignWitnessClosed (O : AdmittedDesign) : Prop :=
  O.finiteProjectivePlane ∧ O.symmetricDesign

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse