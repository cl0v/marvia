class UserModel {
  late final String _id;

  set id(String id) => this._id = id;

  int silvers;
  int golds;

  // Esses dados serão recalculados sob a soma de todos os valores

  UserModel({
    required this.silvers,
    required this.golds,
  });

  late final String _uid;
  set uid(String uid) => _uid = uid;

  Map<String, dynamic> toMap() {
    return {
      'uid': _uid,
      'silvers': silvers,
      'golds': golds,
    };
  }

  factory UserModel.fromMap(String id, Map<String, dynamic> map) {
    final u = UserModel(
      silvers: map['silvers'],
      golds: map['golds'],
    );
    u.id = id;
    return u;
  }
}
