part of app.widget;

class AmountWidget extends StatelessWidget {
  const AmountWidget({
    Key key,
    int like = 0,
    int comment = 0,
    EdgeInsetsGeometry padding,
  }) :  _like = like ?? 0,
        _comment = comment ?? 0,
        _padding = padding ?? EdgeInsets.zero,
        super(key: key);

  final int _like;
  final int _comment;
  final EdgeInsetsGeometry _padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
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
                    '$_like likes',
                    style: context.textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
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
                    '$_comment comments',
                    style: context.textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}