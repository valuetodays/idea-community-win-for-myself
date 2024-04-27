/**
## description:
## when generate TEST class, generate the class javadoc to link the the source class.
#set($classNameSuffix = "Test")

* Tests for {@link #if (${NAME.endsWith($classNameSuffix)})#set($endIndex = ${NAME.length()} - ${classNameSuffix.length()})${NAME.substring(0, $endIndex)}#else${NAME}#end}.
* @author lei.liu
* @since ${YEAR}-${MONTH}-${DAY}
*/