add_llvm_library( LLVMInstNamer MODULE
  instNamer.cpp

  PLUGIN_TOOL
  opt
  )