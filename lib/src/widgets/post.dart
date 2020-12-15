part of app.widget;

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({
    Key key,
    this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostPage(
              post: post,
            ),
          )),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Text(
                    post.post.text,
                    softWrap: true,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2,
                  ),
                ),
                Container(
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
                          '${post.comments.length} comments',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}