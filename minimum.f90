program mini
    implicit none
    
    real A(3,3)
    integer :: i, j     ! i : 행, j : 열
    real :: minimum      ! 최소수
    real :: b

    minimum = 1000000


    ! 행렬 값 랜덤
    do i = 1, 3
        do j = 1, 3
            call random_number(b)
            A(i,j) = b
            write(*,*)
            print *, A(i,j)
        end do
    end do

    do i = 1, 3
        do j = 1, 3
            if (A(i,j) .LT. minimum) THEN
                minimum = A(i,j)
            end if
        end do
    end do

    write(*,*)
    print *, "minimum of A : ", minimum

end program mini
