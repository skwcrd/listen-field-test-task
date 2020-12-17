part of app.widget;

class CommentInputWidget extends StatefulWidget {
  const CommentInputWidget({
    Key key,
    this.data,
  }) : super(key: key);

  final PostModel data;

  @override
  _CommentInputWidgetState createState() => _CommentInputWidgetState();
}

class _CommentInputWidgetState extends State<CommentInputWidget> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1.0,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                    iconSize: 28.0,
                    padding: const EdgeInsets.all(0.0),
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      if ( FocusScope.of(context).hasFocus ) {
                        FocusScope.of(context).unfocus();
                      }
                    },
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 0.0,
                      bottom: 0.0,
                    ),
                    child: TextField(
                      controller: _controller,
                      minLines: 1,
                      maxLines: 6,
                      textInputAction: TextInputAction.send,
                      cursorColor: context.theme.primaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Comments',
                        hintStyle: context.textTheme
                            .bodyText2
                            .copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      onSubmitted: (value) => _onPost(context),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text(
                      'Post',
                      style: TextStyle(
                        fontSize: context.textTheme.headline6.fontSize,
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    textTheme: context.theme.buttonTheme.textTheme,
                    textColor: context.theme.primaryColor,
                    disabledTextColor: context.theme.disabledColor,
                    onPressed: () => _onPost(context),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: !FocusScope.of(context).hasFocus,
            child: Container(
              height: context.height / 10.0,
            ),
          ),
          Visibility(
            visible: !FocusScope.of(context).hasFocus,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              height: context.height / 3.0,
              child: GridView.count(
                crossAxisCount: 3,
                children: Colors.primaries.map(
                  (color) => GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(color: color),
                          Align(
                            alignment: Alignment.topRight,
                            child: Visibility(
                              visible: true,
                              child: Container(
                                padding: const EdgeInsets.all(4.0),
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.blue,
                                      size: 32.0,
                                    ),
                                  ],
                                ),
                              ),
                              replacement: Container(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.radio_button_off,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPost(BuildContext context) {
    if ( FocusScope.of(context).hasFocus ) {
      FocusScope.of(context).unfocus();
    }
    _controller.clear();
  }
}