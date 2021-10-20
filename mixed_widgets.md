# Navigator
```
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MainPage()),
      (Route<dynamic> route) => false,
    );
```
# RichText
```
    RichText(
      text: TextSpan(
        text: "",
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 16,
        ),
        children: <TextSpan>[
          TextSpan(
            text: "",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
```
# ElevatedButton
```
    ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.green,
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 1.5,
          vertical: kDefaultPadding,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            side: BorderSide(color: Colors.white10),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          UIHelper.COLOR_PRIMARY,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          UIHelper.COLOR_SECONDARY,
        ),
      ),
      child: this.child,
      onPressed: this.onPress,
    );
```
