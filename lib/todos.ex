defmodule Todos do
  def create_todos do
    #old code
    # no_of_tasks = IO.gets("Enter no of tasks: ")
    # {n_tasks, _q}=Integer.parse(no_of_tasks)
    # n_tasks

    # Using pipe operator
    {n_tasks, _q}= IO.gets("Enter no of tasks: ") |> Integer.parse()
    n_tasks
  end

  def todo_list do
    ["Wake up early", "Exercise daily", "Eat breakfast", "Read Books"]
  end

  def search?(tasks,task) do
    Enum.member?(tasks,task)
  end

  def pick_random_task?(tasks,cnt) do
    [task]=Enum.take_random(tasks,cnt)
    task
  end
end
