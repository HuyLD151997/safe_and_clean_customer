class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
     this.id,
     this.name,
     this.imageUrl,
     this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'https://znews-photo.zadn.vn/w660/Uploaded/aobovhp/2020_09_26/nick_fury_samuel_l_jackson_1200_1.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'Iron Man',
  imageUrl: 'https://znews-photo.zadn.vn/w660/Uploaded/bzcvolp3/2019_04_29/ironmantony.jpg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'Captain America',
  imageUrl: 'https://cafebiz.cafebizcdn.vn/thumb_w/600/2019/photo1557224364584-1557224364877-crop-15572243735951912688033.jpg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'Hulk',
  imageUrl: 'https://genk.mediacdn.vn/2017/ava-1508815939147.jpg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'Scarlet Witch',
  imageUrl: 'https://genk.mediacdn.vn/2019/10/1/anh-1-1569948309350857053433.jpg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'Spider Man',
  imageUrl: 'https://hiepsibaotap.com/wp-content/uploads/2020/07/every-spider-man-ps4-mission-as-a-comic-book-cover_3mrg.jpg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'Black Widow',
  imageUrl: 'https://anhhungxadieu.vn/chi-dai-marvel/imager_1_110286_100.jpg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'Thor',
  imageUrl: 'https://image.thanhnien.vn/1024/uploaded/thienminh/2017_04_11/anhnoibat_kscn.jpg',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'Captain Marvel',
  imageUrl: 'https://kenh14cdn.com/thumb_w/600/2019/3/10/captain-marvel-fokep3-155219720775099326386-crop-15521972178251134350153.jpg',
  isOnline: false,
);