import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 20, 33, 61),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Center(
            child: Text('TIC TAC TOE'),
          ),
        ),
        body: GamePage(),
      ),
      theme: ThemeData.dark(),
    ),
  );
}

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int neutral = 0, cross = 1, zero = 2, Badres = 0;
  var NumberofTimeButtonPressed = new List(9);

  int NoTBP = 0;
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, h = 0, i = 0;

  var alertStyle = AlertStyle(
    backgroundColor:  Color.fromARGB(255, 20, 33, 61),
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.white,
    ),
  );

  onAlertButtonPressed(context, String title) {
    Alert(
      context: context,
      style: alertStyle,
      type: AlertType.none,
      title: title,
      buttons: [
        DialogButton(
          child: Text(
            "Play again",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Color.fromARGB(255, 252, 163, 17),
          onPressed: () {
           Navigator.pop(context);
            setState(() {
              a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 0; h = 0; i = 0;
              NoTBP = 0;
            });
          },
          width: 120,
        )
      ],
    ).show();
  }

  void Whowon() {
    if ((a == 1 && b == 1 && c == 1) ||
        (d == 1 && e == 1 && f == 1) ||
        (g == 1 && h == 1 && i == 1)) {
      child:onAlertButtonPressed(context,"Player 1 won");
    } else if ((a == 1 && d == 1 && g == 1) ||
        (b == 1 && e == 1 && h == 1) ||
        (c == 1 && f == 1 && i == 1)) {
      child:onAlertButtonPressed(context,"Player 1 won");
    } else if ((a == 1 && e == 1 && i == 1) || (c == 1 && e == 1 && g == 1)) {
      child:onAlertButtonPressed(context,"Player 1 won");
    }

    if ((a == 2 && b == 2 && c == 2) ||
        (d == 2 && e == 2 && f == 2) ||
        (g == 2 && h == 2 && i == 2)) {
      child:onAlertButtonPressed(context,"Player 2 won");
    } else if ((a == 2 && d == 2 && g == 2) ||
        (b == 2 && e == 2 && h == 2) ||
        (c == 2 && f == 2 && i == 2)) {
       child:onAlertButtonPressed(context,"Player 2 won");
    } else if ((a == 2 && e == 2 && i == 2) || (c == 2 && e == 2 && g == 2)) {
      child:onAlertButtonPressed(context,"Player 2 won");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    a = ChangeButtonState();
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$a.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    b = ChangeButtonState();
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$b.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    c = ChangeButtonState();
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$c.png'),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    d = ChangeButtonState();
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$d.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    e = ChangeButtonState();
                    Whowon();
                    print(NoTBP);
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$e.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    f = ChangeButtonState();
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$f.png'),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    g = ChangeButtonState();
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$g.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    h = ChangeButtonState();
                    print(h);
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$h.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    i = ChangeButtonState();
                    Whowon();
                  });
                  NoTBP++;
                },
                color: Color.fromARGB(255, 252, 163, 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/tic$i.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
  int ChangeButtonState() {
    if (NoTBP % 2 == 0) {
      Badres = 1;
    } else {
      Badres = 2;
    }
    return Badres;
  }

}
