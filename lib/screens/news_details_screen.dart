import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatefulWidget {
  final String newsUrl;

  const NewsDetailsScreen({super.key, required this.newsUrl});

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  String title =
      "Maharastra Board Result 2024 Live: Check updates on Maha SSC, HSC result dates";
  String time = " April 8, 2024 19:13 IST";
  String description =
      "Xiaomi India has denied exiting the offline market for smart TV sales.The rebuttal comes in response to a claim made by Super PlastronicsPvt Ltd chief executive officer, Avneet Singh Marwah, that Xiaomi hadclosed its offline television sales last year, apparently because it hadceased to serve as a viable business option.In a statement shared with FE over email, a company spokesperson said that, “Xiaomi has a strong retail presence across multiple offline channels besides Mi stores and Mi Homes including multi-brand stores, Mi Preferred Partners as well as large format stores like Reliance, Vijay Sales, Poorvika, Sangeetha, etc,” adding that brick-and-mortar channels have been contributing to 50 percent of its smart TV sales in the country.Underscoring the importance of offline to showcase “the superior quality of Xiaomi smart TVs, and compare it with other marginal, fragmented players,” the spokesperson reiterated that Xiaomi will continue to strengthen its offline business across all categories, smart TVs included, giving the best experience and choices across channels to its customers.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s",
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 18.93,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                            fontSize: 13.25, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        description,
                        style: const TextStyle(fontSize: 15.24, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
