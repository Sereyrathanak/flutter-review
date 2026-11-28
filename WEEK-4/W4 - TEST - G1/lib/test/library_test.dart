import 'package:test/test.dart';

import '../service/library_service.dart';

void main() {
  test('borrows a book', () {
    final libraryService = LibraryService();
    libraryService.addMember(memberId: 'M1', memberName: 'Dara');
    libraryService.addBook(bookId: 'B1', title: 'Dart Basics');

    libraryService.borrowBook(memberId: 'M1', bookId: 'B1');

    expect(libraryService.books.first.isBorrowed, true);
    expect(libraryService.books.first.borrower!.name, 'Dara');
  });

  test('cannot borrow a book that is already borrowed', () {
    final libraryService = LibraryService();
    libraryService.addMember(memberId: 'M1', memberName: 'Dara');
    libraryService.addMember(memberId: 'M2', memberName: 'Sokha');
    libraryService.addBook(bookId: 'B1', title: 'Dart Basics');

    libraryService.borrowBook(memberId: 'M1', bookId: 'B1');

    expect(
      () => libraryService.borrowBook(memberId: 'M2', bookId: 'B1'),
      throwsException,
    );
  });

  test('a returned book can be borrowed again', () {
    final libraryService = LibraryService();
    libraryService.addMember(memberId: 'M1', memberName: 'Dara');
    libraryService.addMember(memberId: 'M2', memberName: 'Sokha');
    libraryService.addBook(bookId: 'B1', title: 'Dart Basics');

    libraryService.borrowBook(memberId: 'M1', bookId: 'B1');
    libraryService.returnBook(bookId: 'B1');
    libraryService.borrowBook(memberId: 'M2', bookId: 'B1');

    expect(libraryService.books.first.borrower!.name, 'Sokha');
  });

  // TODO Q3: add your 2 tests here
  test('Invalid borrowing regular member cannot borrowing more than 2 books', () {
    final libraryService = LibraryService();
    libraryService.addMember(memberId: 'M1', memberName: 'Dara');

    libraryService.addBook(bookId: 'B1', title: 'Dart Basics');
    libraryService.addBook(bookId: 'B2', title: 'OOP');
    libraryService.addBook(bookId: 'B3', title: 'Java');

    libraryService.borrowBook(memberId: 'M1', bookId: 'B1');
    libraryService.borrowBook(memberId: 'M1', bookId: 'B2');
  

   expect(
    () => libraryService.borrowBook(memberId: "M1", bookId: "B3"),
      throwsException
    ); 
  });

  test('Valid borrowing a premium can borrow the 3rd book', () {
    final libraryService = LibraryService();
    libraryService.addMember(memberId: 'M1', memberName: 'Dara', isPremium: true);

    libraryService.addBook(bookId: 'B1', title: 'Dart Basics');
    libraryService.addBook(bookId: 'B2', title: 'OOP');
    libraryService.addBook(bookId: 'B3', title: 'Java');

    libraryService.borrowBook(memberId: 'M1', bookId: 'B1');
    libraryService.borrowBook(memberId: 'M1', bookId: 'B2');
    libraryService.borrowBook(memberId: 'M1', bookId: 'B3');

   expect(libraryService.books[2].isBorrowed, true); 
   expect(libraryService.books[2].borrower!.name, "Dara"); 
  });

}
