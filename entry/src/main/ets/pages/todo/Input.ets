@Component
@Preview
export struct Input {
  @State content?: string = ""
  onAddTodo: ((string) => void)

  build() {
    Row() {
      TextInput({
        text: this.content,
        placeholder: "请输入待办事项"
      })
        .layoutWeight(1)
        .onChange((value: string) => {
          this.content = value
        })
      Button('添加', { type: ButtonType.Normal })
        .borderRadius(20)
        .height(32)
        .margin({ left: 10 })
        .onClick(() => {
          if (this.content.length == 0) {
            return
          }
          this.onAddTodo(this.content)
          this.content = ""
        })
    }
  }
}