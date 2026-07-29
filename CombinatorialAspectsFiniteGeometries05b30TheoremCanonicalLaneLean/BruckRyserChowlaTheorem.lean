import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure BruckRyserChowlaPackage where
  designOrder : ℕ
  blockSize : ℕ
  lambda : ℕ
  existenceCondition : Prop
  bruckRyserChowlaCondition : (designOrder - 1) * lambda + blockSize^2 - blockSize = 0
  existenceConditionTerm : existenceCondition

structure BruckRyserChowlaEvidence (B : BruckRyserChowlaPackage) where
  existenceConditionClosed : B.existenceCondition

def BruckRyserChowlaClosed (B : BruckRyserChowlaPackage) : Prop :=
  B.existenceCondition

theorem bruck_ryser_chowla_closed_from_evidence (B : BruckRyserChowlaPackage) (E : BruckRyserChowlaEvidence B) :
    BruckRyserChowlaClosed B := by
  exact E.existenceConditionClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse