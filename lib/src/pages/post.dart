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
  PostDataModel _post;
  TextEditingController _controller;

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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _post.text,
                      style: context.textTheme.bodyText2,
                    ),
                  ),
                  AmountWidget(
                    comment: widget.data.commentLength,
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: Divider(
                      thickness: 2.0,
                      indent: 16.0,
                      endIndent: 16.0,
                    ),
                  ),
                  ...widget.data.comments.map<Widget>(
                    (comment) => CommentWidget(
                      data: comment,
                    )),
                ],
              ),
            ),
          ),
          CommentInputWidget(
            data: widget.data,
          ),
        ],
      ),
    );
  }
}