class School {
  final String? _name;
  final String? _address;
  final String? _principal;
  final int? _students;
  final int? _teachers;

  School(this._name, this._address, this._principal, this._students,
      this._teachers);

  // getter
  // Map getSchool() {
  //   return {
  //     'name': _name,
  //     'address': _address,
  //     'principal': _principal,
  //     'students': _students,
  //     'teachers': _teachers
  //   };
  // }

  Map get getSchool => {
        'name': _name,
        'address': _address,
        'principal': _principal,
        'students': _students,
        'teachers': _teachers
      };

  void printSchool() {
    print('School: $_name');
    print('Address: $_address');
    print('Principal: $_principal');
    print('Students: $_students');
    print('Teachers: $_teachers');
  }
}
