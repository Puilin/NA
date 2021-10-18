program trace
    implicit none
    
    integer A(3,3)
    integer :: i, j     ! i : 행, j : 열
    integer :: sum      ! 대각합

    sum = 0


    ! 행렬 값 j로 초기화
    do i = 1, 3
        do j = 1, 3
            A(i, j) = j
        end do
    end do

    do i = 1, 3
        sum = sum + A(i, i)
    end do

    write(*,*)
    print *, "trace of A : ", sum

end program trace
