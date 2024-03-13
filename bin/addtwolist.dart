

class Node {
  int val;
  Node? next;

  Node(this.val);
}

Node? addTwoNumbers(Node? l1, Node? l2) {
  Node? dummy = Node(0);
  Node? curr = dummy;
  int carry = 0;

  while (l1 != null || l2 != null || carry != 0) {
    int val1 = l1?.val ?? 0;
    int val2 = l2?.val ?? 0;
    int sum = val1 + val2 + carry;
    carry = sum ~/ 10;
    curr!.next = Node(sum % 10);
    curr = curr!.next;
    l1 = l1?.next;
    l2 = l2?.next;
  }

  return dummy.next;
}