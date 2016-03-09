module Time
    ( Time
    , now
    , millisecond, second, minute, hour
    , inMilliseconds, inSeconds, inMinutes, inHours
    ) where

{-| Library for working with time.

# Time
@docs Time, now

# Units
@docs millisecond, second, minute, hour,
  inMilliseconds, inSeconds, inMinutes, inHours

-}

import Basics exposing (..)
import Native.Time
import Task exposing (Task)



-- TIMES


{-| Type alias to make it clearer when you are working with time values.
Using the `Time` constants instead of raw numbers is very highly recommended.
-}
type alias Time = Float


{-| Get the `Time` at the moment when this task is run.
-}
now : Task x Time
now =
  Native.Time.now



-- UNITS


{-| Units of time, making it easier to specify things like a half-second
`(500 * millisecond)` without remembering Elm&rsquo;s underlying units of time.
-}
millisecond : Time
millisecond =
  1


{-|-}
second : Time
second =
  1000 * millisecond


{-|-}
minute : Time
minute =
  60 * second


{-|-}
hour : Time
hour =
  60 * minute


{-|-}
inMilliseconds : Time -> Float
inMilliseconds t =
  t


{-|-}
inSeconds : Time -> Float
inSeconds t =
  t / second


{-|-}
inMinutes : Time -> Float
inMinutes t =
  t / minute


{-|-}
inHours : Time -> Float
inHours t =
  t / hour
