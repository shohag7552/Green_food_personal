

import 'Const.dart';


double heightPx({height,value}){
  return (height / (rootContainerSpacing * 2) * value);
}


double widthPx({width,value}){
  return (width / (rootContainerSpacing * 2) * value);
}