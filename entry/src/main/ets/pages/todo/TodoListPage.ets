import dataModel from '../../viewmodel/DataModel';
import { Input } from './Input';
import TodoContent from './TodoContent';
import TodoPageTitle from './TodoPageTitle'

@Component
export default struct TodoPageList {
  private totalTasks: Array<string> = [];

  aboutToAppear() {
    this.totalTasks = dataModel.getData();
  }

  build() {
    Column({ space: 5 }) {
      TodoPageTitle()
      ForEach(this.totalTasks, (item: string) => {
        TodoContent({ content: item })
      }, (item: string) => item)
      Input({ onAddTodo: this.handleAddTodo })
    }.width('100%')
    .height('100%')
    .padding({ left: 10, top: 20, right: 10, })
    .alignItems(HorizontalAlign.Start)
  }

  private handleAddTodo(taskContent: string): void {
    // dataModel.addTask(taskContent)
  }
}

@Component
@Preview
struct TodoListPreview {
  build() {
    Column() {
      TodoPageList()
    }.width("100%")
    .height("100%")
  }
}