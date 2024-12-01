import 'package:algorithm_ex/class.dart';

ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {

  // ListNode 변수는 주소를 가리키는 포인터들 이라고 생각하자
  // 따라서, 같은것을 가리키는 경우 어느 한쪽이 값을 바꾸면 같이 바뀐다.
  ListNode head = ListNode();
  ListNode? pointer = head;

  while(list1 != null && list2 != null){
    if(list1.val <= list2.val){
      pointer?.next = list1;
      list1 = list1.next;
    } else {
      pointer?.next = list2;
      list2 = list2.next;
    }

    pointer = pointer?.next;
  }

  pointer?.next = list1 ?? list2;

  return head.next;
}
