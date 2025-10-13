add_llvm_library( LLVMMergeReturnFunctionPass MODULE
  mergeReturn.cpp

  PLUGIN_TOOL
  opt
  )
