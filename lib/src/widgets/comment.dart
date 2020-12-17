part of app.widget;

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key key,
    @required this.data,
  }) : super(key: key);

  final CommentModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 4.0,
              left: 8.0,
              right: 8.0,
            ),
            child: CircleAvatar(
              radius: 24.0,
              backgroundColor: Colors.black,
            ),
          ),
          Expanded(
            child: Card(
              elevation: 0.0,
              color: Colors.black.withOpacity(0.1),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 4.0,
                  right: 4.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: RichText(
                              text: TextSpan(
                                text: '${data?.addedBy?.name} ',
                                style: context.textTheme.headline6,
                                children: [
                                  TextSpan(
                                    text: '@${data?.addedBy?.id}',
                                    style: context.textTheme.bodyText2.copyWith(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'now',
                              style: context.textTheme.bodyText2.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${data?.text}',
                        style: context.textTheme.bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}