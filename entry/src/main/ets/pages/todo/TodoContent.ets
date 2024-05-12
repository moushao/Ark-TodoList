@Component
export default struct TodoContent {
  private content?:string
  build() {
    Row() {
      Radio({ value: 'Radio1', group: 'radioGroup' })
        .onChange((isChecked: boolean) => {
          if (isChecked) {

          }
        })
      Text(this.content)
        .baselineOffset(0)
        .padding(10)
        .layoutWeight(1)

      Text("删除")
        .baselineOffset(0)
        .fontColor(Color.Red)
        .padding(10)
    }
    .border({ width: 0.8 })
    .borderColor("#afafaf")
    .padding(10)
    .margin({ top: 5, bottom: 5 })
    .borderRadius(8)
  }
}

@Preview
@Component
struct TodoContentPreview {
  build() {
    Row() {
      TodoContent()
    }.width("100%")
  }
}