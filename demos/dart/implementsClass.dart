abstract class DB {
  add(String data);
  delete(int id);
  update(int id,String data);
  query(int id);
}

class MySql implements DB{
  @override
  add(String data) {
    // TODO: implement add
    return null;
  }

  @override
  delete(int id) {
    // TODO: implement delete
    return null;
  }

  @override
  query(int id) {
    // TODO: implement query
    return null;
  }

  @override
  update(int id, String data) {
    // TODO: implement update
    return null;
  }
}

class msSql implements DB{
  @override
  add(String data) {
    // TODO: implement add
    return null;
  }

  @override
  delete(int id) {
    // TODO: implement delete
    return null;
  }

  @override
  query(int id) {
    // TODO: implement query
    return null;
  }

  @override
  update(int id, String data) {
    // TODO: implement update
    return null;
  }
}

main(){
  MySql mySql = new MySql();
  mySql.add('data...');
  mySql.delete(1);
  //...


}