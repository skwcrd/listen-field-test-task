part of app.page;

class PostPage extends StatefulWidget {
  const PostPage({
    Key key,
    this.data,
  }) : super(key: key);

  final PostModel data;

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  TextEditingController _controller;
  PostDataModel _post;

  @override
  void initState() {
    super.initState();
    _post = widget.data.post;
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            _post.id.toUpperCase(),
            style: context.textTheme.headline6,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    _post.text,
                    style: context.textTheme.bodyText2,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.favorite_outline,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Text(
                                '0 likes',
                                style: context.textTheme.bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.comment,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Text(
                                '${widget.data.comments.length} comments',
                                style: context.textTheme.bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Divider(
                    thickness: 2.0,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                    offset: Offset(0, 0), // changes position of shadow
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
                        onSubmitted: (value) {
                          _onPost();
                        },
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
                      onPressed: _onPost,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPost() {
    _controller.clear();
  }
}