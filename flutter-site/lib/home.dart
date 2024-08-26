import 'package:flutter/material.dart';
import 'package:profl/sections/article_narrow.dart';
import 'package:profl/sections/article_wide.dart';
import 'package:profl/sections/highlights_bar.dart';
import 'components/connectors.dart';
import 'sections/highlights_section.dart';

Uri githubUrl = Uri.parse('http://github.com/astorDev');

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeLayoutBuilder(),
      )
    );
  }
}

class HomeLayoutBuilder extends StatelessWidget {
  const HomeLayoutBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800 || constraints.maxHeight < 750) {
          return const NarrowHome();
        }
        
        if (constraints.maxWidth < 1200 || constraints.maxHeight < 800) {
          return const WideHome();
        }

        return const WideHome(scrollable: false,);
      },
    );
  }
}

class WideHome extends StatelessWidget {
  final bool scrollable;
  
  const WideHome({
    super.key,
    this.scrollable = true
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HighlightsBar(),
        Expanded(child: ArticleWide(scrollable: scrollable,)),
      ],
    );
  }
}

class NarrowHome extends StatelessWidget {
  const NarrowHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HighlightsSection(),
          const ArticleNarrow(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            color: Theme.of(context).colorScheme.onSurface,
            child: const Connectors(useHeaders: true),
          ),
        ],
      ),
    );
  }
}