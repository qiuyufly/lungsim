module gas_exchange_c
  implicit none
  private

contains
!
!###################################################################################
  
!*test_function:* just for testing the new module
  subroutine test_function_c() bind(C, name="test_function_c")
  
    use gas_exchange, only: test_function
    implicit none


#if defined _WIN32 && defined __INTEL_COMPILER
    call so_test_function
#else
    call test_function
#endif

  end subroutine test_function_c
  
end module gas_exchange_c

