module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- Int (suma)


add2 : Int -> Int -> Int
add2 a b =
    a + b



-- Float (suma)


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z



-- Recibe 2 num y una funcion


calc : a -> a -> (a -> a -> b) -> b
calc x y operation =
    operation x y


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


languageNames : List { record | name : String } -> List String
languageNames list =
    List.map .name list


onlyStudents : List { record | name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        list


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


myLaptop =
    { ram = "16GB"
    , model = "XPS 13"
    , brand = "Dell"
    , screenSize = "13.4"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
