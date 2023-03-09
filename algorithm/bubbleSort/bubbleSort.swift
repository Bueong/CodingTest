
//외부의 배열을 참조값으로 받아 버블 정렬을 수행
func bubbleSort<T: Comparable>(_ array: inout [T]) {
  
  //정렬할 필요가 없는 길이 1의 배열 정리
    guard array.count > 1 else { return }

    for i in 0..<array.count {
      //정렬할 필요가 없는지 확인할 플래그
        var swapped = false

        for j in 1..<array.count - i {
            if array[j] < array[j - 1] {
                array.swapAt(j, j - 1)
                swapped = true
            }
        }

        // 정렬할 필요가 없다면 종료
        if !swapped {
            return
        }
    }
}
