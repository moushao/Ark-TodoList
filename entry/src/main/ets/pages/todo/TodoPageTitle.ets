@Component
export default struct TodoPageTitle {
  build() {
    Text("待办事项")
      .fontSize(24)
      .fontWeight(FontWeight.Bold)
  }
}