import '../model/book.dart';
import '../model/member.dart';

class LibraryService {
  final List<Member> members = [];
  final List<Book> books = [];

  void addMember({required String memberId, required String memberName, bool isPremium = false}) {
    // ! Member shall not exist already
    if (_findMemberOrNull(memberId) != null) {
      throw Exception('Member $memberId already exists');
    }
    members.add(Member(id: memberId, name: memberName, isPremium: isPremium));
  }
  
  void addBook({required String bookId, required String title}) {
    // ! Book shall not exist already
    if (_findBookOrNull(bookId) != null) {
      throw Exception('Book $bookId already exists');
    }
    books.add(Book(id: bookId, title: title));
  }

  void borrowBook({required String memberId, required String bookId}) {
    // ! Member shall exist
    Member? member = _findMemberOrNull(memberId);
    if (member == null) {
      throw Exception('Member $memberId not found');
    }

    if (_countBorrowBook(memberId) >= member.maxBooks){
      throw Exception("This member ${memberId} has already reached the limit of ${member.maxBooks} book"); 
    }
    // ! Book shall exist
    Book? book = _findBookOrNull(bookId);
    if (book == null) {
      throw Exception('Book $bookId not found');
    }

    // ! Book shall not be borrowed already
    if (book.isBorrowed) {
      throw Exception('Book $bookId is already borrowed');
    }

    book.borrower = member;
  }

  void returnBook({required String bookId}) {
    // ! Book shall exist
    Book? book = _findBookOrNull(bookId);
    if (book == null) {
      throw Exception('Book $bookId not found');
    }

    // ! Book shall be borrowed
    if (!book.isBorrowed) {
      throw Exception('Book $bookId is not borrowed');
    }

    book.borrower = null;
  }

  Member? _findMemberOrNull(String memberId) {
    for (Member m in members) {
      if (m.id == memberId) return m;
    }
    return null;
  }

  Book? _findBookOrNull(String bookId) {
    for (Book b in books) {
      if (b.id == bookId) return b;
    }
    return null;
  }

  int _countBorrowBook(String memberId){
    int count = 0; 
    for (Book b in books){
      if (b.borrower != null && b.borrower!.id == memberId){
        count ++; 
      }
    }
    return count; 
  }
}
