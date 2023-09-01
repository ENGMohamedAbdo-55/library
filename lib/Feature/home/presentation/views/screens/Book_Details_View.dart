import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/Feature/home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';

import '../widgets/BookDetails_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});
  
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks();
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}
