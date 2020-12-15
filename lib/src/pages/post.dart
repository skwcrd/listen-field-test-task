part of app.page;

class PostPage extends StatefulWidget {
  const PostPage({
    Key key,
    this.post,
  }) : super(key: key);

  final PostModel post;

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.post.post.text.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .headline6,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}