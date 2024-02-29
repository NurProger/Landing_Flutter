import 'package:flutter/material.dart';
class MovieDetailsMainScreenCastWidget extends StatelessWidget {
  const MovieDetailsMainScreenCastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _scroll = ScrollController();
    return ColoredBox(
        color:Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.all(10.0),
            child: Text("Series Cast", style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.w700),),
          ),
          SizedBox(
            height: 350,
            child: Scrollbar(
              controller: _scroll,
              thumbVisibility: true,
              child: ListView.builder(
                controller: _scroll,
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                  itemExtent: 160,
                  itemBuilder: (BuildContext context , int index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black.withOpacity(0.2)),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    offset: Offset(0, 2),
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              clipBehavior: Clip.hardEdge,
                              child: const Column(
                                children: [
                                  Image(image: AssetImage("/actor.jpg")),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Text('Steven Yeun',
                                        style: TextStyle(fontSize: 17),
                                        maxLines: 1,),
                                        SizedBox(height: 5,),
                                        Text('Mark Gryson / Invinced (voice',maxLines: 4,),
                                        SizedBox(height: 5,),
                                        Text('8 Episodes',
                                        maxLines: 1,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                }
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextButton(
              onPressed: (){},
                child: Text("Full Cast & Crew")),
          ),
        ],
      ),
    );
  }
}
