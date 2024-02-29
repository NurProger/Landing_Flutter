import 'package:flutter/material.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPostersWidget(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: _MovieNamedWideget(),
        ),
        _ScoreWidget(),
        SizedBox(height: 8,),
        _SummeryWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DescriptionWidget(),
        ),
        SizedBox(height: 30,),
        _PeopleWidget(),
      ],
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("An elite Navy SEAL uncovers an international conspricy while seeking justice for the nurder of his pregnant wife",
        style: TextStyle(fontSize: 17, color: Colors.white));
  }
}

class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Overview", style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600, color: Colors.white));
  }
}
class _TopPostersWidget extends StatelessWidget {
  const _TopPostersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('/topHeader.jpg'),
      ],
    );
  }
}
class _MovieNamedWideget extends StatelessWidget {
  const _MovieNamedWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: 3,
        text: TextSpan(
        children: [
          TextSpan(text: "Tom Clancy`s Without Remorse", style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600, color: Colors.white)),
          TextSpan(text: "(2021)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: Colors.white))
        ]
        )
    );
  }
}
class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: (){}, child: Row(
          children: [
            Text('User Score'),
          ],
        )),
        Container(width: 1, color: Colors.grey,),
        TextButton(onPressed: (){}, child: Row(
          children: [
            Icon(Icons.play_arrow),
            Text('Play Trailer'),
          ],
        )),
      ],
    );
  }
}


class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(22, 12, 25, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 10),
        child: Text(
            "R 04/29/2021 (US) 1h49m Action, Adventure, Thriller, War",
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white
            )
        ),
      ),
    );
  }
}
class _PeopleWidget extends StatelessWidget {
  const _PeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white
    );
    final jobStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefano Sollima',style: nameStyle,),
                Text('Dircetor',style: jobStyle)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefano Sollima',style: nameStyle,),
                Text('Dircetor',style: jobStyle)
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefano Sollima',style: nameStyle,),
                Text('Dircetor',style: jobStyle)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefano Sollima',style: nameStyle,),
                Text('Dircetor',style: jobStyle)
              ],
            ),
          ],
        ),
      ],
    );
  }
}


