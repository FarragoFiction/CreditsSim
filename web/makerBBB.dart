

import 'dart:async';
import "dart:html";
import "package:CreditsLib/CharacterLib.dart";
import 'package:CreditsLib/src/CharacterObject.dart';
import 'package:DollLibCorrect/src/Dolls/Doll.dart';
import 'package:RenderingLib/RendereringLib.dart';

Element content = querySelector("#content");

Future<Null> main() async {
  await Doll.loadFileData();
  BBBCreator co = new BBBCreator("BigBadBattle Creator","ASAEAAD4__________8HAAD4__________8HAAD4__8HAAD4__8HAAD4__8HAAD4______8HGBoCAADAAAAAAAAYGgI=");
  co.makeForm(content);

}