// import 'package:test/test.dart';

// import '../service/library_service.dart';

// void main() {
//   test('borrows a book', () {
//     final libraryService = LibraryService();
//     libraryService.addMember(memberId: 'M1', memberName: 'Dara');
//     libraryService.addBook(bookId: 'B1', title: 'Dart Basics');

//     libraryService.borrowBook(memberId: 'M1', bookId: 'B1');

//     expect(libraryService.books.first.isBorrowed, true);
//     expect(libraryService.books.first.borrower!.name, 'Dara');
//   });

//   test('cannot borrow a book that is already borrowed', () {
//     final libraryService = LibraryService();
//     libraryService.addMember(memberId: 'M1', memberName: 'Dara');
//     libraryService.addMember(memberId: 'M2', memberName: 'Sokha');
//     libraryService.addBook(bookId: 'B1', title: 'Dart Basics');

//     libraryService.borrowBook(memberId: 'M1', bookId: 'B1');

//     expect(
//       () => libraryService.borrowBook(memberId: 'M2', bookId: 'B1'),
//       throwsException,
//     );
//   });

//   test('a returned book can be borrowed again', () {
//     final libraryService = LibraryService();
//     libraryService.addMember(memberId: 'M1', memberName: 'Dara');
//     libraryService.addMember(memberId: 'M2', memberName: 'Sokha');
//     libraryService.addBook(bookId: 'B1', title: 'Dart Basics');

//     libraryService.borrowBook(memberId: 'M1', bookId: 'B1');
//     libraryService.returnBook(bookId: 'B1');
//     libraryService.borrowBook(memberId: 'M2', bookId: 'B1');

//     expect(libraryService.books.first.borrower!.name, 'Sokha');
//   });

//   // TODO Q3: add your 2 tests here
// }
