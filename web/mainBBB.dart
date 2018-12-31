import 'dart:async';
import "dart:html";
import 'navbar.dart';
import "package:CreditsLib/CharacterLib.dart";
import 'package:CreditsLib/src/CharacterObject.dart';
import 'package:DollLibCorrect/src/Dolls/Doll.dart';
import 'package:RenderingLib/RendereringLib.dart';
Element content = querySelector("#content");
String targetWords =  getParameterByName("target",null);


Future<Null> main() async{
  heartfeltThanks();
  await Doll.loadFileData();
  List<CreditsObject> credits = await BBBCreator.slurpAllCredits();
  if(targetWords != null) {
    //i am the best at var names, it is me
    List<String> doop = targetWords.split("_");
    credits = CreditsObject.filterBy(credits, doop);
  }
  CreditsObject.drawCredits(credits, content);
}

void heartfeltThanks() {
  ImageElement me = new ImageElement(src: "images/jadedResearcher.png");
  me.style.float = "left";
  content.append(me);
  DivElement thanks = new DivElement();
  thanks.style.verticalAlign = "middle";
  thanks.style.height = "${me.height}px";
  thanks.setInnerHtml("One May 13th, 2018, the Big Bad Battle contest began to birth Big Bads to Battle it out for the right to be SBURBSim canon. Their creators are listed, here.");
  content.append(thanks);
}