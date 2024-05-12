import TodoPageList from './todo/TodoListPage';
@Entry
@Component
struct Index {
  build() {
    Column(){
      TodoPageList()
    }
  }
}