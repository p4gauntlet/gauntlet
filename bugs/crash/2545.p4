/*Invoking preprocessor
cpp -C -undef -nostdinc -x assembler-with-cpp  -Ip4c/build/p4include bugs/crash/struct_call_extern.p4
FrontEnd_0_P4V1::getV1ModelVersion
ParseAnnotationBodies_0_ParseAnnotations
ParseAnnotationBodies_1_ClearTypeMap
FrontEnd_1_ParseAnnotationBodies
FrontEnd_2_PrettyPrint
FrontEnd_3_ValidateParsedProgram
FrontEnd_4_CreateBuiltins
FrontEnd_5_ResolveReferences
ConstantFolding_0_DoConstantFolding
FrontEnd_6_ConstantFolding
InstantiateDirectCalls_0_ResolveReferences
InstantiateDirectCalls_1_DoInstantiateCalls
FrontEnd_7_InstantiateDirectCalls
FrontEnd_8_ResolveReferences
Deprecated_0_ResolveReferences
Deprecated_1_CheckDeprecated
FrontEnd_9_Deprecated
FrontEnd_10_CheckNamedArgs
FrontEnd_11_TypeInference
FrontEnd_12_ValidateMatchAnnotations
BindTypeVariables_0_ClearTypeMap
BindTypeVariables_1_ResolveReferences
BindTypeVariables_2_TypeInference
BindTypeVariables_3_DoBindTypeVariables
FrontEnd_13_BindTypeVariables
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
DefaultArguments_0_TypeChecking
DefaultArguments_1_DoDefaultArguments
FrontEnd_14_DefaultArguments
FrontEnd_15_ResolveReferences
FrontEnd_16_TypeInference
RemoveParserControlFlow_0_DoRemoveParserControlFlow
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
RemoveParserControlFlow_1_SimplifyControlFlow
FrontEnd_17_RemoveParserControlFlow
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
StructInitializers_0_TypeChecking
StructInitializers_1_CreateStructInitializers
StructInitializers_2_ClearTypeMap
FrontEnd_18_StructInitializers
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SpecializeGenericFunctions_0_TypeChecking
SpecializeGenericFunctions_1_FindFunctionSpecializations
SpecializeGenericFunctions_2_SpecializeFunctions
FrontEnd_19_SpecializeGenericFunctions
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
TableKeyNames_0_TypeChecking
TableKeyNames_1_DoTableKeyNames
FrontEnd_20_TableKeyNames
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
ConstantFolding_0_TypeChecking
ConstantFolding_1_DoConstantFolding
ConstantFolding_2_ClearTypeMap
PassRepeated_0_ConstantFolding
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
P4::TypeChecking_2_ApplyTypesToExpressions
P4::TypeChecking_3_ResolveReferences
P4::StrengthReduction_0_TypeChecking
P4::StrengthReduction_1_StrengthReduction
PassRepeated_1_StrengthReduction
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
UselessCasts_0_TypeChecking
UselessCasts_1_RemoveUselessCasts
PassRepeated_2_UselessCasts
P4::TypeChecking_2_ResolveReferences
P4::TypeChecking_3_TypeInference
ConstantFolding_3_TypeChecking
ConstantFolding_4_DoConstantFolding
ConstantFolding_5_ClearTypeMap
PassRepeated_3_ConstantFolding
P4::TypeChecking_4_ResolveReferences
P4::TypeChecking_5_TypeInference
P4::TypeChecking_6_ApplyTypesToExpressions
P4::TypeChecking_7_ResolveReferences
P4::StrengthReduction_2_TypeChecking
P4::StrengthReduction_3_StrengthReduction
PassRepeated_4_StrengthReduction
P4::TypeChecking_2_ResolveReferences
P4::TypeChecking_3_TypeInference
UselessCasts_2_TypeChecking
UselessCasts_3_RemoveUselessCasts
PassRepeated_5_UselessCasts
FrontEnd_21_PassRepeated
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
FrontEnd_22_SimplifyControlFlow
FrontEnd_23_SwitchAddDefault
FrontEnd_24_FrontEndDump
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
PassRepeated_2_ResolveReferences
PassRepeated_3_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
FrontEnd_25_RemoveAllUnusedDeclarations
SimplifyParsers_0_ResolveReferences
SimplifyParsers_1_DoSimplifyParsers
FrontEnd_26_SimplifyParsers
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
ResetHeaders_0_TypeChecking
ResetHeaders_1_DoResetHeaders
FrontEnd_27_ResetHeaders
UniqueNames_0_ResolveReferences
UniqueNames_1_FindSymbols
UniqueNames_2_RenameSymbols
FrontEnd_28_UniqueNames
FrontEnd_29_MoveDeclarations
FrontEnd_30_MoveInitializers
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SideEffectOrdering_0_TypeChecking
SideEffectOrdering_1_DoSimplifyExpressions
FrontEnd_31_SideEffectOrdering
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
FrontEnd_32_SimplifyControlFlow
FrontEnd_33_MoveDeclarations
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyDefUse_0_TypeChecking
SimplifyDefUse_1_DoSimplifyDefUse
FrontEnd_34_SimplifyDefUse
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
UniqueParameters_0_TypeChecking
UniqueParameters_1_(anonymous namespace)::FindActionCalls
UniqueParameters_2_FindParameters
UniqueParameters_3_RenameSymbols
UniqueParameters_4_ClearTypeMap
FrontEnd_35_UniqueParameters
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
FrontEnd_36_SimplifyControlFlow
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
ConstantFolding_0_TypeChecking
ConstantFolding_1_DoConstantFolding
ConstantFolding_2_ClearTypeMap
SpecializeAll_0_ConstantFolding
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SpecializeAll_1_TypeChecking
SpecializeAll_2_FindSpecializations
SpecializeAll_3_Specialize
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
SpecializeAll_4_RemoveAllUnusedDeclarations
FrontEnd_37_SpecializeAll
RemoveParserControlFlow_0_DoRemoveParserControlFlow
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
RemoveParserControlFlow_1_SimplifyControlFlow
FrontEnd_38_RemoveParserControlFlow
RemoveReturns_0_ResolveReferences
RemoveReturns_1_DoRemoveReturns
FrontEnd_39_RemoveReturns
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
RemoveDontcareArgs_0_TypeChecking
RemoveDontcareArgs_1_DontcareArgs
RemoveDontcareArgs_2_ClearTypeMap
FrontEnd_40_RemoveDontcareArgs
MoveConstructors_0_ResolveReferences
MoveConstructors_1_MoveConstructorsImpl
FrontEnd_41_MoveConstructors
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
FrontEnd_42_RemoveAllUnusedDeclarations
FrontEnd_43_ClearTypeMap
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
P4::TypeChecking_1_TypeInference
EvaluatorPass_0_TypeChecking
EvaluatorPass_0_TypeChecking
EvaluatorPass_1_Evaluator
EvaluatorPass_1_Evaluator
FrontEnd_44_EvaluatorPass
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
P4::InlinePass_0_TypeChecking
P4::InlinePass_1_DiscoverInlining
P4::InlinePass_2_InlineDriver
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
P4::InlinePass_3_RemoveAllUnusedDeclarations
P4::Inline_0_InlinePass
P4::TypeChecking_2_ResolveReferences
P4::TypeChecking_2_ResolveReferences
P4::TypeChecking_3_TypeInference
P4::TypeChecking_3_TypeInference
EvaluatorPass_2_TypeChecking
EvaluatorPass_2_TypeChecking
EvaluatorPass_3_Evaluator
EvaluatorPass_3_Evaluator
P4::Inline_1_EvaluatorPass
FrontEnd_45_Inline
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
InlineActions_0_TypeChecking
InlineActions_1_DiscoverActionsInlining
InlineActions_2_InlineDriver
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
InlineActions_3_RemoveAllUnusedDeclarations
FrontEnd_46_InlineActions
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
InlineFunctions_0_TypeChecking
InlineFunctions_1_DiscoverFunctionsInlining
InlineFunctions_2_InlineDriver
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
InlineFunctions_3_RemoveAllUnusedDeclarations
FrontEnd_47_InlineFunctions
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SetHeaders_0_TypeChecking
SetHeaders_1_DoSetHeaders
FrontEnd_48_SetHeaders
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
CheckConstants_0_TypeChecking
CheckConstants_1_DoCheckConstants
FrontEnd_49_CheckConstants
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
FrontEnd_50_SimplifyControlFlow
RemoveParserControlFlow_0_DoRemoveParserControlFlow
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
RemoveParserControlFlow_1_SimplifyControlFlow
FrontEnd_51_RemoveParserControlFlow
UniqueNames_0_ResolveReferences
UniqueNames_1_FindSymbols
UniqueNames_2_RenameSymbols
FrontEnd_52_UniqueNames
LocalizeAllActions_0_TagGlobalActions
PassRepeated_0_ResolveReferences
PassRepeated_1_FindGlobalActionUses
PassRepeated_2_LocalizeActions
LocalizeAllActions_1_PassRepeated
LocalizeAllActions_2_ResolveReferences
LocalizeAllActions_3_FindRepeatedActionUses
LocalizeAllActions_4_DuplicateActions
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
LocalizeAllActions_5_RemoveAllUnusedDeclarations
FrontEnd_53_LocalizeAllActions
UniqueNames_0_ResolveReferences
UniqueNames_1_FindSymbols
UniqueNames_2_RenameSymbols
FrontEnd_54_UniqueNames
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
UniqueParameters_0_TypeChecking
UniqueParameters_1_(anonymous namespace)::FindActionCalls
UniqueParameters_2_FindParameters
UniqueParameters_3_RenameSymbols
UniqueParameters_4_ClearTypeMap
FrontEnd_55_UniqueParameters
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
FrontEnd_56_SimplifyControlFlow
FrontEnd_57_HierarchicalNames
FrontEnd_58_FrontEndLast
MidEnd_0_RemoveMiss
MidEnd_1_EliminateNewtype
MidEnd_2_EliminateSerEnums
MidEnd_3_RemoveActionParameters
MidEnd_4_SimplifyKey
MidEnd_5_RemoveExits
MidEnd_6_ConstantFolding
MidEnd_7_SimplifySelectCases
MidEnd_8_ExpandLookahead
MidEnd_9_ExpandEmit
MidEnd_10_HandleNoMatch
MidEnd_11_SimplifyParsers
MidEnd_12_StrengthReduction
MidEnd_13_EliminateTuples
MidEnd_14_SimplifyComparisons
MidEnd_15_CopyStructures
MidEnd_16_NestedStructs
bugs/crash/struct_call_extern.p4(12): [--Werror=type-error] error: : Read-only value used for out/inout parameter val
extern bit<64> call_extern(inout Headers val);
                                         ^^^
Done.
*/

#include <core.p4>
header ethernet_t {
    bit<48> dst_addr;
    bit<48> src_addr;
    bit<16> eth_type;
}

struct Headers {
    ethernet_t eth_hdr;
}

extern bit<64> call_extern(inout Headers val);

parser p(packet_in pkt, out Headers hdr) {
    state start {
        transition parse_hdrs;
    }
    state parse_hdrs {
        pkt.extract(hdr.eth_hdr);
        transition accept;
    }
}

control ingress(inout Headers h) {
    apply {
        Headers tmp = h;
        call_extern(tmp);
        h = tmp;
    }
}

parser Parser(packet_in b, out Headers hdr);
control Ingress(inout Headers hdr);
package top(Parser p, Ingress ig);
top(p(), ingress()) main;

