import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'هالیدی',
                            style: TextStyle(fontSize: 22.0),
                          ),
                          Text(
                            'HOLIDAY.COM',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.headphones),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'پشتیبانی',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                  decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                      hintText: 'جستجوی شهر ، استان یا نام اقامتگاه',
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/images/banner.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'دسترسی سریع',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                width: double.infinity,
                height: 200.0,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  children: const <Widget>[
                    QuickCard(
                      title: 'ویلای شمال',
                      icon: Icons.home,
                    ),
                    QuickCard(
                      title: 'استخردار',
                      icon: Icons.pool,
                    ),
                    QuickCard(
                      title: 'کلبه',
                      icon: Icons.home_work,
                    ),
                    QuickCard(
                      title: 'ساحلی',
                      icon: Icons.beach_access,
                    ),
                    QuickCard(
                      title: 'لوکس',
                      icon: Icons.line_axis_outlined,
                    ),
                    QuickCard(
                      title: 'مناسب جشن',
                      icon: Icons.celebration,
                    ),
                    QuickCard(
                      title: 'ترکیه',
                      icon: Icons.mosque,
                    ),
                    QuickCard(title: 'آنی', icon: Icons.timelapse)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تخفیف ویژه',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.blue),
                        onPressed: () {},
                        child: Text(
                          'نمایش همه',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ],
              ),
              Text('اقامتگاه های دارای تخفیف ویژه'),
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: double.minPositive,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/banner.jpg',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Color.fromRGBO(50, 50, 50, 0.5)),
                                  child: Center(child: Text('رزرو آنی')),
                                ),
                                Icon(
                                  Icons.heart_broken_rounded,
                                  color: Color.fromRGBO(50, 50, 50, 0.5),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const Text('هشت بهشت (اتاق 4 نفره)'),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('اصفهان'),
                            Text('تا 6 مهمان'),
                            Text('1 خوابه'),
                            Text('4.8'),
                            Text('12 نظر')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class QuickCard extends StatelessWidget {
  const QuickCard({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
    );
  }
}
