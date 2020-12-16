part of app.page;

class IndexPage extends StatefulWidget {
  const IndexPage({ Key key }) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<PostModel> _posts;

  @override
  void initState() {
    super.initState();
    _posts = <PostModel>[
      PostModel(
        post: PostDataModel(
          id: '001',
          text: 'post 01',
          status: 'test',
        ),
      ),
      PostModel(
        post: PostDataModel(
          id: '002',
          text: 'post 02',
          status: 'test',
        ),
      ),
      PostModel(
        post: PostDataModel(
          id: '003',
          text: 'post 03',
          status: 'test',
        ),
      ),
      PostModel(
        post: PostDataModel(
          id: '004',
          text: 'post 04',
          status: 'test',
        ),
      ),
      PostModel(
        post: PostDataModel(
          id: '005',
          text: 'post 05',
          status: 'test',
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Posts',
          style: context.textTheme.headline6,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _posts.map(
            (data) => PostCard(
              data: data,
            )).toList(),
        ),
      ),
    );
  }
}