import 'package:audiobookr_admin/commons/api/client/book_client.dart';
import 'package:audiobookr_admin/commons/api/dio_di.dart';
import 'package:audiobookr_admin/features/book/bloc/book_bloc.dart';
import 'package:audiobookr_admin/features/book/repos/book_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Third-party
  getIt.registerLazySingleton<Dio>(() => _DioDi().dio);

  // Book
  getIt.registerLazySingleton<BookClient>(() => BookClient(
        getIt<Dio>(),
        baseUrl: 'https://audiobookr.herokuapp.com/',
      ));
  getIt.registerLazySingleton<IBookRepository>(
    () => BookRepository(getIt<BookClient>()),
  );
  getIt.registerFactory(
    () => BookBloc(getIt<IBookRepository>()),
  );
}

class _DioDi extends DioDi {}
