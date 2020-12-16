part of app.widget;

class PostCard extends StatelessWidget {
  final PostModel data;

  const PostCard({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostPage(
              data: data,
            ),
          )),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data.post.text,
                    softWrap: true,
                    style: context.textTheme.bodyText2,
                  ),
                ),
                Container(
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
                                '${data.comments.length} comments',
                                style: context.textTheme.bodyText2,
                              ),
                            ),
                          ],
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