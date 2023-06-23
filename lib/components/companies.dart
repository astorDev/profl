import 'package:flutter/material.dart';
import 'package:profl/components/shadowcard.dart';

class Company {
  final String name;
  final String? logo;
  final String description;

  Company({
    required this.name,
    this.logo,
    required this.description
  });
}

Company ankr = Company(
  name: 'Ankr',
  logo: 'ankr.png',
  description: '''The fastest, most reliable Web3 infrastructure provider, handling 8 Billion Daily API requests, used by 40,000+ distinct developers around the world, trusted by major blockchain and web3 players'''
);

Company securrency = Company(
  name: 'Securrency',
  logo: 'securrency.png',
  description: '''Market-leading innovator in the development of institutional-grade, compliance-aware tokenization, account management, and decentralized finance technology based on blockchain.'''
);

Company pickpoint = Company(
  name: 'PickPoint',
  logo: 'pickpoint.png',
  description: '''Russian innovative delivery service company. First company to bring automated delivery points to the local market. Delivering thousands of orders daily'''
);

Company wss = Company(
  name: 'WSS',
  logo: 'wss.png',
  description: '''Microsoft’s gold certified partner providing document managing system for various companies and industries, summing up to 500+ projects. Trusted by major Russian companies, including PepsiCo, Allianz, Sberbank.'''
);

class CompaniesGrid extends StatelessWidget {
  static const double spacing = 10;
  
  const CompaniesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: 20,
      children: [
        CompanyCard(ankr, height: 150),
        CompanyCard(securrency, height: 150),
        CompanyCard(pickpoint, height: 150),
        CompanyCard(wss, height: 150),
      ]
    );
  }
}

class CompanyCard extends StatelessWidget {
  
  static const double width = 190;
  final double? height;

  final Company company;

  const CompanyCard(this.company, {super.key,  this.height });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: ShadowCard(
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 5,
              children: [
                if (company.logo != null)
                  Image.asset('assets/${company.logo!}', height: 20),
          
                Text(
                  company.name,
                  style: Theme.of(context).textTheme.titleMedium
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              company.description,
              style: Theme.of(context).textTheme.bodySmall
            )
          ],
        ),
      ),
    );
  }
}