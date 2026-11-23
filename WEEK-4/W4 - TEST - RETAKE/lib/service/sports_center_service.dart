import '../model/court.dart';

class SportsCenterService {
  final List<Court> courts = [];

  void addCourt({
    required String courtId,
    required String courtName,
    bool isIndoor = false,
  }) {
    // ! Court shall not exist already
    if (_findCourtOrNull(courtId) != null) {
      throw Exception('Court $courtId already exists');
    }

    // ! Court name shall not be empty
    if (courtName.isEmpty) {
      throw Exception('Court name cannot be empty');
    }

    courts.add(Court(id: courtId, name: courtName, isIndoor: isIndoor));
  }

  Court? _findCourtOrNull(String courtId) {
    for (Court c in courts) {
      if (c.id == courtId) return c;
    }
    return null;
  }
}
