// genericity 泛型


class Genericity<T>{
   List list = new List<T>();
   void setData(T data){
     list.add(data);
   }
   List getData(){
       return this.list;
   }
}
main(){
    Genericity g = new Genericity<String>();
    // g.setData(123); //报错 type 'int' is not a subtype of type 'String' of 'data'
    g.setData('Sogrey');
    print(g.getData());//[Sogrey]
}