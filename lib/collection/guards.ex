defmodule Orisons.Collection.Guards do
    
    defmacro is_list_map(list) do
        quote do
            Enum.all?(unquote(list), fn(x) -> is_map(x) end)
        end
    end

end