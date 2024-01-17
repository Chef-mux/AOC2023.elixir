defmodule Solutions do

  @number_converter %{
    "zero" => "0",
    "one" => "1",
    "two" => "2",
    "three" => "3",
    "four" => "4",
    "five" => "5",
    "six" => "6",
    "seven" => "7",
    "eight" => "8",
    "nine" => "9"
  }

  @reverse_number_converter %{
    "orez" => "0",
    "eno" => "1",
    "owt" => "2",
    "eerht" => "3",
    "ruof" => "4",
    "evif" => "5",
    "xis" => "6",
    "neves" => "7",
    "thgie" => "8",
    "enin" => "9"
  }

  def read_input (path) do
    #input = File.stream!("/home/david/KTH/Prog2/AoC_prog2/solutions/input_test")
    input = File.stream!(path)
    numbers_list = Enum.map(input, fn (line) ->
      line |>String.trim |> convert_text |> remove_char |> find_number |> parse
    end )
    sum = sum(numbers_list)
    sum
  end

  def sum(list_of_numbers) do
    sum = Enum.reduce(list_of_numbers, 0, fn(num, accumulation) ->
      num + accumulation
    end)
    sum
  end

  def remove_char(input_string) do
    numbers = String.replace(input_string, ~r/[^0-9]/,"", global: true)
    numbers
  end

  def find_number (numbers_as_string) do
    first = String.first(numbers_as_string)
    last = String.last(numbers_as_string)
    number = first<>last
    number
  end

  def parse(number_as_string) do
    number = String.to_integer(number_as_string)
    number
  end

  def convert_text(input) do



    #first = Enum.reduce(@number_converter, input, &help_replace/2)
    #reverse = String.reverse(input)
    #IO.gets(reverse)
    #number_rev = Enum.reduce(@reverse_number_converter, reverse, &help_replace/2)
    #IO.gets(number_rev)
    #second = String.reverse(number_rev)
    #output = first <> second
    #output
  end

  defp help_replace({word, digit}, acc) do
    String.replace(acc, word, digit, global: true)
  end
end
