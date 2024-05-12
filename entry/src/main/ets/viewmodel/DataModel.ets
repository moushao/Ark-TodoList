/*export class DataModel {
  *//**
   * Saved Data.
   *//*
  private tasks: Array<string> = [
    "早起晨练",
    "准备早餐",
    "阅读名著",
    "学习ArkTS",
    "看剧放松"
  ]

  *//**
   * Get the data.
   *//*
  getData(): Array<string> {
    return this.tasks;
  }
}*/

export class DataModel {
  private tasks: Array<string> = ['去一趟马来西亚', '去一趟泰国', '去一趟柬埔寨']

  public getTasks(): Array<string> {
    return this.tasks
  }

  getData(): Array<string> {
    return this.tasks;
  }

  addTask(task: string) {
    this.tasks.push(task)
  }

  deleteTask(task: string) {
    const index = this.tasks.indexOf(task)
    if (index != -1) {
      this.tasks.splice(index, 1)
    }
  }
}

export default new DataModel();
